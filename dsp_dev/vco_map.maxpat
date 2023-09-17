{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 170.0, 100.0, 752.0, 848.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
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
		"toolbars_unpinned_last_save" : 0,
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
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 243.0, 401.0, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 354.0, 83.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[7]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 376.0, 236.0, 41.0, 22.0 ],
					"text" : "atk $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 172.0, 192.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 160.0, 228.0, 31.0, 22.0 ],
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 115.0, 183.0, 34.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 217.0, 216.0, 31.0, 22.0 ],
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 37.0, 100.0, 47.0, 22.0 ],
					"text" : "unpack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 37.0, 66.0, 92.5, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 37.0, 31.0, 40.0, 22.0 ],
					"text" : "midiin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 37.0, 142.0, 150.0, 22.0 ],
					"text" : "ddg.mono @legatomode 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 489.0, 320.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[6]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 511.0, 426.0, 45.0, 22.0 ],
					"text" : "sub $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 635.0, 78.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[5]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 657.0, 231.0, 58.0, 22.0 ],
					"text" : "shape $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 565.0, 83.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[4]",
							"parameter_mmax" : 12.0,
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 587.0, 236.0, 62.0, 22.0 ],
					"text" : "detune $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 482.0, 83.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[3]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 504.0, 236.0, 61.0, 22.0 ],
					"text" : "fil_dep $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 416.0, 83.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[2]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 438.0, 236.0, 45.0, 22.0 ],
					"text" : "dec $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 289.0, 83.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[1]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 311.0, 236.0, 42.0, 22.0 ],
					"text" : "res $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 146.0, 533.0, 34.0, 22.0 ],
					"text" : "*~ 2."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 533.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 115.0, 247.0, 39.0, 22.0 ],
					"text" : "click~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 115.0, 215.0, 22.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 221.0, 83.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 243.0, 236.0, 41.0, 22.0 ],
					"text" : "cut $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-6",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 53.0, 282.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "live.scope~",
					"mode" : 1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 146.0, 623.0, 419.0, 153.0 ],
					"samples" : 2400.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "dsp.gen",
						"rect" : [ 365.0, 100.0, 1113.0, 848.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"toolbars_unpinned_last_save" : 0,
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 656.0, 810.0, 35.0, 22.0 ],
									"text" : "out 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 656.0, 15.0, 28.0, 22.0 ],
									"text" : "in 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 335.5, 15.0, 28.0, 22.0 ],
									"text" : "in 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 15.0, 28.0, 22.0 ],
									"text" : "in 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 810.0, 35.0, 22.0 ],
									"text" : "out 1"
								}

							}
, 							{
								"box" : 								{
									"code" : "smooth(x, time) { \n    History prev;\n    prev = prev + time * (x - prev);        \n\n    return prev;\n}\r\n\r\nar(trig, gate, attack, release) {\n\tHistory env(0), stage(0), trigged(0), gating(0),\n\t\t\tatk_rate(0), atk_coeff(0), atk_offset(0),\n\t\t\trel_rate(0), rel_coeff(0), rel_offset(0);\n\t\t\r\n\tif (trig) {\r\n\t\tif (gate && trigged) {\r\n\t\t\t// do nothing\r\n\t\t} else {\r\n\t\t\ttrigged = 1;\r\n\t\t\t\r\n\t\t\t// rate in seconds\n\t\t\tatk_rate = samplerate * attack;\n\t\t\trel_rate = samplerate * release;\n\t\t\n\t\t\t// slope 0 = linear, slope -n = log/exp\n\t\t\tatk_slope = exp(-1.5);\n\t\t\trel_slope = exp(-8);\n\t\t\n\t\t\t// calculate coefficients\n\t\t\tatk_coeff = exp(-log((1 + atk_slope) / atk_slope) / atk_rate);\n\t\t\tatk_offset = (1 + atk_slope) * (1 - atk_coeff);\n\t\t\n\t\t\trel_coeff = exp(-log((1 + rel_slope) / rel_slope) / rel_rate);\n\t\t\trel_offset = -rel_slope * (1 - rel_coeff);\n\t\t\n\t\t\t// reset & trigger envelope\n\t\t\tstage = 1;\r\n\t\t}\n\t}\t\n\n\t// stage 0 = idle, 1 = attack, 2 = decay\n\tif (stage == 0) {\n\t\tenv = 0;\n\t} else if (gate && trigged) {\r\n \t\tif (stage == 1) {\n\t\t\tenv = atk_offset + env * atk_coeff;\n\t\t\n\t\t\tif (env >= 1 || attack <= 0) {\n\t\t\t\tenv = 1;\n\t\t\t\tstage = 2;\n\t\t\t}\r\n\t\t} else if (stage == 2) {\n\t\t\tenv = env;\n\t\t}\r\n\t} else {\r\n\t\ttrigged = 0;\r\n\t\t\n\t\tenv = rel_offset + env * rel_coeff;\n\t\t\n\t\tif (env <= 0 || release <= 0) {\n\t\t\tenv = 0;\n\t\t\tstage = 0;\n\t\t}\r\n\t} \n\treturn env, trigged;\n}\r\n\r\ntan_a(x) {\n\tx2 = x * x;\n\treturn x * (0.999999492001 + x2 * -0.096524608111) / (1 + x2 * (-0.429867256894 + x2 * 0.009981877999));\n}\r\n\r\nasym(x) {\r\n\treturn (exp(x * 1.5) - exp(-x * 1.05)) / (exp(x * 1.5) + exp(-x));\r\n}\r\n\r\nlp(xin, cf, q) {\n    History z1(0), z2(0), z3(0), S35(0);\n\n    T = 1 / samplerate;\n    T_div_two = T / 2;\n    two_div_T = 2 / T;\n\n    wd = twopi * cf;\n    wa = two_div_T * tan_a(wd * T_div_two);\n    g = wa * T_div_two;\n    G = g / (1 + g);\n\n    K = 0.1 + ((2 - 0.1) * (q / 10));\n\n    lpf2_beta = (K - (K * G)) / (1 + g);\n    hpf1_beta = -1 / (1 + g);\n    alpha = 1 / (1 - (K * G) + (K * G * G));\n\n    v1 = (xin - z1) * G;\n    lp1 = v1 + z1;\n    z1 = lp1 + v1;\n\n    u = alpha * (lp1 + S35);\r\n\tu = asym(u);\n\n    v2 = (u - z2) * G;\n    lp2 = v2 + z2;\n    z2 = lp2 + v2;\n    y = K * lp2;\n\n    v3 = (y - z3) * G;\n    lp3 = v3 + z3;\n    z3 = lp3 + v3;\n\n    S35 = (lpf2_beta * z2) + (hpf1_beta * z3);\n\n    return (K > 0) ? (y / K) : y;\n}\r\n\r\nph(freq) {\r\n\tHistory phase(0);\r\n\t\r\n\tinc = freq / samplerate;\r\n\t\r\n\tphase += inc;\r\n\tphase -= phase >= 1;\r\n\t\r\n\treturn phase;\r\n}\r\n\r\nop(freq, mult, ph, pm, fb) {\r\n\tHistory fbk(0), osc(0);\r\n\t\r\n\tratio = freq * mult;\r\n\t\r\n\tnorm_freq = (ratio) / samplerate;\r\n\tfb_factor = 13 * pow(0.5 - norm_freq, 4);\r\n\t\r\n\tphase = ph(ratio);\r\n\tosc = cycle((phase - 0.25 + ph) + fbk + pm, index = \"phase\");\r\n\t\r\n\tif (fb > 0) {\r\n\t\tfbk = mix(osc * (fb * fb_factor), fbk, 0.5);\r\n\t}\r\n\tif (fb < 0) {\r\n\t\tfbk = mix((osc * osc) * (fb * fb_factor), fbk, 0.5);\r\n\t}\r\n\t\r\n\treturn osc;\r\n}\r\n\r\npulse(freq, width, factor) {\r\n\tHistory pw, pwm, osc;\r\n\t\r\n\tpw = op(freq, -1, 0.40, 0, 0) * width * factor;\r\n\tpwm = op(freq, 2, 0, pw * 0.8, 0.375) * 0.125 * factor;\r\n\tosc = op(freq, 1, 0, pwm + pw * 0.41, -0.24);\r\n\t\r\n\treturn osc;\r\n}\r\n\r\nsaw(freq, width, factor) {\r\n\tHistory tri, pwm, osc;\r\n\t\r\n\tsw0 = op(freq, 1, 0, 0, 0.4) * 0.2 * factor;\r\n\tosc = op(freq, 1, 0, sw0, 0.3);\r\n\t\r\n\treturn osc;\r\n}\r\n\r\nParam \tcut, res, fil_dep,\r\n\t\tshape, sub, detune, slide,\r\n\t\tatk, dec;\r\n\r\nHistory slide_time;\r\n\r\n// inputs\r\n\r\ntrig = in1;\r\ngate = in2;\r\nnote = in3;\r\n\r\n// parameters\r\n\r\ncut_ = smooth(cut * 127, 0.005);\r\nres_ = smooth(res * 7 + 1, 0.005);\r\nshape_ = smooth(shape, 0.005);\r\nsub_ = smooth(sub, 0.005);\r\ndetune_ = smooth(detune * 12, 0.005);\r\ndec_ = smooth(dec * 10 + 0.01, 0.005);\r\natk_ = smooth(atk * 10 + 0.001, 0.005);\r\n\r\nshape_mix = clip(shape_, 0, 0.5) * 2;\r\npulse_width = (clip(shape_, 0.5, 1) - 0.5) * 2;\r\ndetune_mix = smooth(clip(detune_, 0, 0.0001) * 10000, 0.001);\r\n\r\nsub0_mix = clip(sub_, 0, 0.5) * 2;\r\nsub1_mix = (clip(sub_, 0.5, 1) - 0.5) * 2;\r\n\r\n// envelopes\r\n\r\namp_env, trigged = ar(trig, gate, atk_, dec_);\r\nfil_env = ar(trig, gate, atk_, dec_ * (0.75 - dec_ * 0.02));\r\n\r\n// frequency calculations\r\n\r\nlast_note = latch(note, delta(trigged) > 0);\r\n\r\nif (trigged) {\r\n\tif (note != last_note) {\r\n\t\tslide_time = 1024;\r\n\t}\r\n} else {\r\n\tslide_time = 0;\r\n}\r\n\r\nnote_ = slide(note, slide_time, slide_time);\r\n\r\nfreq = mtof(note_);\r\nfreq_d = mtof(note_ + detune_);\r\nfreq_s0 = mtof(note_ - 12);\r\nfreq_s1 = mtof(note_ - 24);\r\n\r\nfil_dep_ = smooth(fil_dep * 127, 0.005);\r\n\r\ncutoff = mtof(smooth(cut_, 0.005) + (note_ - 24) + fil_env * fil_dep_);\r\ncutoff = clip(cutoff, 1, samplerate / 2 - 500);\r\n\r\nnorm_freq = freq / samplerate;\r\nnorm_freq_d = freq_d / samplerate;\r\nnorm_freq_s = freq_s0 / samplerate;\r\n\r\npm_factor = 14 * pow(0.5 - norm_freq, 4);\r\npm_factor_d = 14 * pow(0.5 - norm_freq_d, 4);\r\npm_factor_s = 14 * pow(0.5 - norm_freq_s, 4);\r\n\r\n// oscillators\r\n\r\nosc_p0 = pulse(freq, pulse_width, pm_factor);\r\nosc_p1 = pulse(freq_d, pulse_width, pm_factor_d);\r\n\r\npul_mix = osc_p0 + osc_p1 * detune_mix;\r\n\r\nosc_s0 = saw(freq, 0, pm_factor);\r\nosc_s1 = saw(freq_d, 0, pm_factor_d);\r\n\r\nsaw_mix = osc_s0 + osc_s1 * detune_mix;\r\n\r\nosc_s0 = pulse(freq_s0, 0, pm_factor_s);\r\nosc_s1 = pulse(freq_s1, 0, pm_factor_s);\r\n\r\nsub_mix = mix(osc_s0 * sub0_mix, osc_s1, sub1_mix);\r\n\r\nosc_mix = mix(saw_mix, pul_mix, shape_mix) + sub_mix;\r\n\r\n// filter\r\n\r\nfil = lp(lp(osc_mix * 0.25, cutoff, res_) * 0.25, cutoff, res_);\r\n\r\nout1 = fil * amp_env;\r\nout2 = last_note;",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 15.0, 45.0, 660.0, 750.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 2 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 151.0, 333.0, 36.0, 22.0 ],
					"saved_object_attributes" : 					{
						"exportfolder" : "Macintosh HD:/Users/ess/Desktop/fuck/"
					}
,
					"text" : "gen~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 2,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 1,
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 0,
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-10" : [ "live.dial", "live.dial", 0 ],
			"obj-12" : [ "live.dial[4]", "live.dial", 0 ],
			"obj-14" : [ "live.dial[5]", "live.dial", 0 ],
			"obj-24" : [ "live.dial[6]", "live.dial", 0 ],
			"obj-26" : [ "live.dial[1]", "live.dial", 0 ],
			"obj-3" : [ "live.dial[2]", "live.dial", 0 ],
			"obj-42" : [ "live.dial[7]", "live.dial", 0 ],
			"obj-9" : [ "live.dial[3]", "live.dial", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
