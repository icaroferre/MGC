{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 518.0, 49.0, 311.0, 453.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Helvetica Neue Bold",
					"fontsize" : 10.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 407.0, 46.5, 96.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 28.5, 420.0, 252.0, 18.0 ],
					"text" : "spektroaudio.com",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.39 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Helvetica Neue Bold",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 366.0, 29.5, 137.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 28.5, 401.0, 252.0, 21.0 ],
					"text" : "Created by Ícaro Ferre",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.39 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Helvetica Neue Light",
					"fontsize" : 18.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 85.5, 221.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.5, 78.0, 229.0, 28.0 ],
					"text" : "Multi-Channel Grid Control",
					"textcolor" : [ 0.498039215686275, 0.494117647058824, 0.494117647058824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Helvetica Neue Thin",
					"fontsize" : 48.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 23.0, 221.0, 63.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 28.5, 17.0, 194.0, 63.0 ],
					"text" : "M▪G▪C▪",
					"textcolor" : [ 0.941176470588235, 0.941176470588235, 0.941176470588235, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 513.666666666666629, 550.0, 32.0, 22.0 ],
					"text" : "set -"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 373.0, 308.999999999999943, 111.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.0, 317.68260609683216, 159.0, 20.0 ],
					"text" : "Monome:",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 581.666666666666629, 645.0, 92.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.0, 173.85714285714289, 90.0, 20.0 ],
					"text" : "Mapping file:",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 74.0, 528.5, 111.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.0, 263.114763897190755, 159.0, 20.0 ],
					"text" : "MIDI Output Port:",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"id" : "obj-35",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 272.0, 263.0, 71.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.0, 233.362223550508133, 157.0, 20.0 ],
					"text" : "Max MIDI Channels:",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 303.0, 623.0, 163.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.0, 203.609683203825512, 163.0, 20.0 ],
					"text" : "Last button pressed:",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 435.0, 621.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 208.0, 204.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 513.666666666666629, 667.0, 158.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 173.85714285714289, 130.0, 20.0 ],
					"text" : "Digitakt v1.0",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 187.0, 446.0, 20.0, 23.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-18",
					"items" : [ "AU DLS Synth 1", ",", "Driver IAC Driver IAC LCXL", ",", "Driver IAC Arduino 1 (OUT)", ",", "Driver IAC Arduino 2 (IN)", ",", "CVpal", ",", "Digitakt Elektron MIDI", ",", "from Max 1", ",", "from Max 2" ],
					"labelclick" : 1,
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 187.0, 527.0, 100.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.0, 285.114763897190755, 201.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 187.0, 486.5, 55.0, 23.0 ],
					"text" : "midiinfo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 185.5, 263.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 272.0, 322.0, 35.0, 22.0 ],
					"text" : "set 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 745.0, 348.0, 80.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 66.0, 138.0, 177.0, 25.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_shortname" : "live.text",
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_type" : 2,
							"parameter_longname" : "live.text",
							"parameter_mmax" : 1
						}

					}
,
					"text" : "Import JSON",
					"varname" : "live.text"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "init", "bang" ],
					"patching_rect" : [ 745.0, 382.0, 41.0, 22.0 ],
					"text" : "t init b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 767.0, 425.0, 74.0, 22.0 ],
					"text" : "clear, import"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 272.0, 361.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 208.0, 235.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 272.0, 396.0, 73.0, 22.0 ],
					"text" : "channels $1"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"about" : 						{
							"gear" : "Digitakt",
							"version" : 1.0,
							"author" : "Ícaro Ferre"
						}
,
						"envelope" : 						{
							"cc" : [ 78, 79, 80 ],
							"channels" : 8,
							"default" : 40,
							"rand" : 1,
							"40" : [ 0, 127, 30 ],
							"41" : [ 2, 0, 20 ],
							"42" : [ 30, 2, 0 ],
							"43" : [ 20, 127, 10 ]
						}
,
						"tune" : 						{
							"cc" : 3,
							"channels" : 8,
							"default" : 18,
							"rand" : 1,
							"16" : 48,
							"17" : 55,
							"18" : 60,
							"19" : 72
						}
,
						"distortion" : 						{
							"cc" : [ 18, 81 ],
							"channels" : 8,
							"default" : 24,
							"rand" : 24,
							"24" : [ 0, 0 ],
							"25" : [ 24, 20 ],
							"26" : [ 60, 60 ],
							"27" : [ 100, 80 ]
						}
,
						"play_mode" : 						{
							"cc" : 17,
							"channels" : 8,
							"default" : 23,
							"rand" : 1,
							"20" : 0,
							"21" : 1,
							"22" : 2,
							"23" : 3
						}
,
						"length" : 						{
							"cc" : 21,
							"channels" : 8,
							"default" : 31,
							"rand" : 1,
							"28" : 20,
							"29" : 40,
							"30" : 60,
							"31" : 127
						}
,
						"volume" : 						{
							"cc" : 95,
							"channels" : 8,
							"default" : 63,
							"rand" : 0,
							"60" : 50,
							"61" : 75,
							"62" : 100,
							"63" : 127
						}
,
						"lfo" : 						{
							"cc" : [ 102, 103, 104, 105, 106, 107, 108, 109 ],
							"channels" : 8,
							"default" : 48,
							"rand" : 1,
							"48" : [ 80, 1, 64, 9, 0, 0, 0, 64 ],
							"49" : [ 80, 2, 64, 9, 0, 0, 0, 80 ],
							"50" : [ 80, 21, 64, 9, 4, 0, 3, 96 ],
							"51" : [ 80, 11, 64, 9, 0, 0, 0, 72 ],
							"52" : [ 65, 1, 64, 12, 6, 0, 2, 72 ],
							"53" : [ 65, 2, 64, 9, 6, 0, 2, 80 ],
							"54" : [ 65, 2, 64, 31, 6, 0, 2, 96 ],
							"55" : [ 65, 2, 64, 18, 6, 0, 2, 96 ]
						}
,
						"filter" : 						{
							"cc" : [ 74, 75, 76 ],
							"channels" : 8,
							"default" : 32,
							"rand" : 1,
							"32" : [ 127, 0, 0 ],
							"33" : [ 60, 40, 1 ],
							"34" : [ 30, 64, 1 ],
							"35" : [ 110, 40, 2 ]
						}
,
						"filter-env" : 						{
							"cc" : [ 70, 71, 72, 73, 77 ],
							"channels" : 8,
							"default" : 36,
							"rand" : 1,
							"36" : [ 0, 50, 0, 0, 64 ],
							"37" : [ 15, 30, 0, 0, 74 ],
							"38" : [ 0, 30, 0, 0, 110 ],
							"39" : [ 0, 20, 0, 0, 20 ]
						}
,
						"effects" : 						{
							"cc" : [ 82, 83 ],
							"channels" : 8,
							"default" : 44,
							"rand" : 0,
							"44" : [ 0, 0 ],
							"45" : [ 45, 40 ],
							"46" : [ 60, 80 ],
							"47" : [ 90, 127 ]
						}
,
						"delay-settings" : 						{
							"cc" : [ 85, 86, 87, 88, 89, 90, 91, 92 ],
							"channels" : 8,
							"default" : 56,
							"rand" : 0,
							"56" : [ 23, 0, 64, 40, 32, 60, 75, 110 ],
							"57" : [ 15, 1, 100, 10, 52, 60, 25, 110 ],
							"58" : [ 31, 0, 64, 20, 32, 50, 45, 110 ],
							"59" : [ 3, 0, 64, 50, 70, 40, 15, 110 ]
						}

					}
,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 767.0, 456.0, 145.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict mappings @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 435.0, 583.0, 137.0, 22.0 ],
					"text" : "route button xy mapping"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 373.0, 597.0, 47.0, 22.0 ],
					"text" : "midiout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 521.0, 396.0, 72.0, 22.0 ],
					"text" : "compile, init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 373.0, 434.0, 89.0, 22.0 ],
					"text" : "prepend button"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 373.0, 471.0, 81.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "mgc.js",
						"parameter_enable" : 0
					}
,
					"text" : "js mgc.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 373.0, 396.0, 135.0, 22.0 ],
					"text" : "route /monome/grid/key"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-2",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "serialosc.maxpat",
					"numinlets" : 2,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 373.0, 348.0, 201.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.0, 339.68260609683216, 201.0, 27.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.32156862745098, 0.32156862745098, 0.32156862745098, 1.0 ],
					"id" : "obj-39",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 12.0, 501.0, 127.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 28.5, 120.5, 252.0, 267.0 ],
					"proportion" : 0.5,
					"rounded" : 20
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 754.5, 463.0, 382.5, 463.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 776.5, 414.0, 776.5, 414.0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 195.0, 303.0, 281.5, 303.0 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 2,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 195.0, 519.5, 523.166666666666629, 519.5 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 237.0, 573.0, 382.5, 573.0 ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 413.5, 503.0, 601.0, 503.0, 601.0, 337.0, 382.5, 337.0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 444.5, 537.5, 444.5, 537.5 ],
					"source" : [ "obj-20", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 530.5, 463.0, 382.5, 463.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-43", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 281.5, 465.0, 382.5, 465.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-13" : [ "live.text", "live.text", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "serialosc.maxpat",
				"bootpath" : "C74:/packages/BEAP/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "serialosc.js",
				"bootpath" : "C74:/packages/BEAP/patchers",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "mgc.js",
				"bootpath" : "~/Dropbox/Work/Programming/MaxMSP/My Patches/Diginome Control",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 1.0 ]
	}

}
