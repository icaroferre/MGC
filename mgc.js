
/*

M▪G▪C▪ – Multi-Channel Grid Control

JS Script for Max 8

Created by Ícaro Ferre
Spektro Audio
http://spektroaudio.com/

*/

inlets = 1;
outlets = 3;

setinletassist(0, "from serialosc Out");
setoutletassist(0, "to Midi Out");
setoutletassist(1, "to serialosc In");
setoutletassist(2, "Data");

var monome_sizes = [[8, 8], [16,8]]
var active_size = [8, 8];
var active_scene = 0;
var total_channels = 8;
var active_channels = [];

var scenes = {
	0 : {},
	1 : {},
	2 : {},
	3 : {},
	4 : {},
	5 : {}
}

var midi_history = {};
var groups = {};
var mapping_dict = Dict("mappings");
var mapping_keys = mapping_dict.getkeys();

function monome(i) {
	if (i < monome_sizes.length) {
		active_size = monome_sizes[i];
		init();
	}
}

function copydict() {
	groups = {};
	post("\nCopying Max mapping dictionary to internal dict...")
	ignored_keys = ["about"]

	if (mapping_dict.contains("about") == 1) {
		// Get Gear
		if (mapping_dict.get("about").contains("gear") == 1) { gear = mapping_dict.get("about").get("gear") } else {gear = "Unkown"};
		// Get Version
		if (mapping_dict.get("about").contains("version") == 1) { version = mapping_dict.get("about").get("version").toPrecision(2) } else {version = "Unkown"};
		// Get Author
		if (mapping_dict.get("about").contains("author") == 1) { author = mapping_dict.get("about").get("author") } else {author = "Unkown"};
		post("\nMapping info: ", gear,  "v" + version, "-", "Created by " + author);
		outlet(2, "mapping", "set", gear + " v" + version);
	}

	for (var k = 0; k < mapping_keys.length; k++) {
		key = mapping_keys[k];
		if (ignored_keys.indexOf(key) == -1) {
			subkeys = mapping_dict.get(key).getkeys();
			groups[key] = {};
			for (var s = 0; s < subkeys.length; s++) {
				subkey = subkeys[s];
				numkey = parseInt(subkey);
				value = mapping_dict.get(key).get(subkey);
				if (isNaN(numkey) == false) {
					subkey = parseInt(subkey);
				}
				if (isNaN(value) == false) {
					value = parseInt(value);
				}
				// post("\n Adding value:", key, subkey, value, value.length);
				groups[key][subkey] = value;
			}
		}
	}


	// post("\nFinished cloning mapping dictionary.")
	// init();
}

function init() {
	post("\n", "–––––––––––––––––––––––");

	post("\n", "Initializing script...");
	outlet(1, "/monome/grid/led/all", 0);
	outlet(1, "/monome/grid/led/set", (active_size[0] - 1), 0, 1); // Default button
	outlet(1, "/monome/grid/led/set", (active_size[0] - 2), 0, 1); // Randomize button
	// mapping_keys = mapping_dict.getkeys();
	// for (var i = 0; i < mapping_keys.length; i++) {
	// 	post("\n", mapping_keys[i]);
	// }
	copydict();
	for (var f = 0; f < total_channels; f++) {
		outlet(1, "/monome/grid/led/set", f, 1, 1); // Scenes
	}
	reset();
	post("\n", "Initialization completed.");
	post("\n", "–––––––––––––––––––––––");
}



function reset() {
	fillChannels();
	// restore();
	fillScenes();
	emptyHistory();
	recall_scene(0);
}

function fillScenes() {
	post("\n", "Resetting all scenes to default...");
	for (var i = 0; i < (active_size[0] - 2); i++) {

		for (key in groups) {
				scenes[i][key] = groups[key]["default"];
		}
	}
}

function fillChannels() {
	post("\n", "Enabling all channels...");
	for (var i = 0; i < 16; i++) {
		active_channels.push(1);
	}
}

function emptyHistory() {
	post("\n", "Emptying MIDI history...");
	for (var i = 0; i < 127; i++) {
		midi_history[i] = 255;
	}
}

function rand_all() {
	for (key in groups) {
		if (groups[key]["rand"] == 1) {
			btns = []
			for (b in groups[key]) {
					b = parseInt(b);
					if (isNaN(b) == 0) {
						btns.push(b);
					}
			}
			random_num = btns[Math.floor(Math.random() * btns.length)];
			enable(random_num, key);
		}
	}
}

function channels(i) {
	total_channels = i;
	show_channels();
}

function flip_ch(x) {
	if (x < total_channels) {
		active_channels[x] = (active_channels[x] + 1) % 2;
		show_channels();
	}
}

function show_channels() {
	total = 0;
	for (var b = 0; b < total_channels; b++) {
		total += (active_channels[b] * Math.pow(2, b));
		outlet(1, "/monome/grid/led/row", 0, 1, total);
	}
}

function xy(num) {
	x_pos = num % active_size[0];
	y_pos = Math.floor((num - x_pos) / active_size[0]);
	return [x_pos, y_pos];
	// outlet(2, "xy", x_pos, y_pos);
}

function recall_scene(i) {
	post("\nRestoring scene: " + i)
	active_scene = i;
	for (key in scenes[i]) {
		enable(scenes[i][key], key);
	}
	// enable(scenes[i]["envelope"], "envelope");
	outlet(1, "/monome/grid/led/row", 0, 0, Math.pow(2, i) + 192);
	for (key in scenes[i]) {
		enable(scenes[i][key], key);
	}
}

function restore() {
	for (key in groups) {
		default_num = groups[key]["default"];
		enable(default_num, key);
	}
}

function button(x, y, value) {
	button_num = x + (y * active_size[0]);
	outlet(2, "button", button_num);
	if (value == 1) {
		switch (y) {
			case 0:
				// First Row - Scenes + Commands
				switch (x) {
					case 7:
						restore();
						break;
					case 6:
						rand_all()
						break;
					default:
						recall_scene(x)
				}
				break;
			case 1:
				// Channel Mutes
				flip_ch(x);
				break;
			default:
				// All the rest
				found_groups = findGroup(button_num);
				if (found_groups.length > 0) {
					for (var i = 0; i < found_groups.length; i++) {
						group = found_groups[i];
						enable(button_num, group);
					}
				}
		}
	}
}

function enable (button_num, group) {
	xy_pos = xy(button_num);	

	cc_num = groups[group]["cc"];
	value = groups[group][button_num];
	cc_type = typeof cc_num;
	num_of_ch = groups[group]["channels"];

	scenes[active_scene][group] = button_num;

	if (cc_type == "number") {
		// If button only has 1 CC assigned
		sendMIDI(num_of_ch, cc_num, value);
	} 
	else if (cc_type == "object") {
		// If multiple CCs are assigned to button
		if (cc_num.length != value.length) {
			error("\n", group, ">", button_num + ": incompatible number of values (" + value.length + ") for declared CCs (" + cc_num.length +")");
		} else {
			for (var c = 0; c < cc_num.length; c++) {
				final_cc = cc_num[c];
				final_value = value[c];
				sendMIDI(num_of_ch, final_cc, final_value);
			}
		}
	}

	outlet(1, "/monome/grid/led/set", xy_pos[0], xy_pos[1], 1);
	turnOffGroup(group, button_num);
}


function sendMIDI(channels, cc, value) {
	// post("\n", channels, cc, value);
	if (channels > total_channels) {
		channels = total_channels;
	}

	if (midi_history[cc] != value) {
		for (var i = 0; i < channels; i++) {
			if (active_channels[i] == 1) {
				outlet(0, 176 + i, cc, value);
			}
		};
		midi_history[cc] = value;
	}
}


function turnOffGroup(group, num) {
	// Turn off all buttons in group except num
	for (b in groups[group]){
		is_btn = isNaN(parseInt(b));
		if (b != num && is_btn == 0) {
			xy_pos = xy(b);
			outlet(1, "/monome/grid/led/set", xy_pos[0], xy_pos[1], 0);
		}
	}
}



function findGroup(num) {
	// Etinerates through all group until it finds a group containing the input button
	found_groups = [];
	for (key in groups) {
		for (b in groups[key]) {
			if (b == num) {
				found_groups.push(key);
			}
		}
	}
	return found_groups;
}