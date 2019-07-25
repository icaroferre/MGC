#  M▪G▪C▪ - Multi-Channel Grid Control

![MGC Screenshot](/screenshot.jpg?raw=true)

MSG is a Max 8 patch + JS script that lets you control Drum Machines, Samplers, and Synthesizers from your Monome via MIDI CC.  
Because MSG outputs MIDI CC messages to all active channels, it's capable of controlling multiple tracks on samplers (such as the Elektron Digitakt) at once. 
It's a great tool for live performance and experimentation.

Video Demo: [https://youtu.be/QMNk66-enZg](https://youtu.be/QMNk66-enZg)

The script can load a mapping file (JSON) that groups buttons on the Monome into groups. Each group can be assigned to multiple CC destinations and each button of the group can be assigned to different values.
 
MSG can also store different scenes / presets which can be recalled using the top row of the Monome.

--------

# How to Use

Simply load the MGC_MainPatch.maxpat file, import the mapping file you'd like to use and select both the MIDI out and the Monome port.

The first row of the Monome selects the active scene, except for the last 2 buttons which randomize and initialize the scene.

The second row of the Monome enables / disables MIDI channels.

# Limitations

Although the script was written in such way that allows for other Monome sizes, I've only tested MCG with the Monome 40h so far.  
My goal is to add an option in the near future for other Monome sizes.

# JSON Formatting

The JSON file must be formatted like so:

``` json
{  
	"about": {
		"gear" : "Gear Name",
		"version" : 1.0,
		"author" : "Author Name"
	},
	"group1" : 	{
		"cc" : [ 78, 79, 80 ], 
		"channels" : 8,
		"default" : 40,
		"rand" : 1,
		"40" : [ 0, 127, 30 ],
		"41" : [ 2, 0, 20 ],
		"42" : [ 30, 2, 0 ],
		"43" : [ 20, 127, 10 ]
	},
	"group2" : 	{
		"cc" : 3,
		"channels" : 8,
		"default" : 18,
		"rand" : 1,
		"16" : 48,
		"17" : 55,
		"18" : 60,
		"19" : 72
	}
}
```

Please notice that:

* Groups can have one or multiple CC destinations / values (which need to be declared as an array).
* The default number related to the button number, not the CC value.
* Button numbers (key) must be formatted as strings while the corresponding values must formatted as integers.
* Rand = Randomizable

For more information on how to properly format the mapping / JSON file, check the digitakt.json file included in the repo.

# digitakt.json

I developed MGC with the Digitakt in mind, so I've included the mapping file I've created for it.

Here's how it's mapped:

| Note -12   | Note - 5     | Note 0       | Note + 12      | Play Mode <  | Play Mode < Loop | Play Mode > Loop | Play Mode >   |
|------------|--------------|--------------|----------------|--------------|------------------|------------------|---------------|
| BR + OD 0  | BR + OD 24   | BR + OD 60   | BR + OD 80/100 | Length 20    | Length 40        | Length 60        | Length 127    |
| Filter Off | Filter LPF 1 | Filter LPF 2 | Filter HPF     | Filter Env 1 | Filter Env 2     | Filter Env 3     | Filter Env 4  |
| Envelope 1 | Envelope 2   | Envelope 3   | Envelope 4     | FX Amt 1     | FX Amt 2         | FX Amt 3         | FX Amt 4      |
| LFO 1      | LFO 2        | LFO 3        | LFO 4          | LFO 5        | LFO 6            | LFO 7            | LFO 8         |
| Delay 1    | Delay 2      | Delay 3      | Delay 4        | Track Vol 50 | Track Vol 75     | Track Vol 100    | Track Vol 127 |

---------

Created by Ícaro Fere
@icaroferre everywhere

Spektro Audio
[spektroaudio.com](http://spektroaudio.com/)
