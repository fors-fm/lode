# Lode

**Subtractive monobass synth & device template for Max for Live**

Lode is a monophonic bass synthesizer inspired by our most beloved vintage pieces. You can read more about it, and download it for free, [on the Fors website](https://fors.fm/lode).
It's built on a framework made for rapid development of [Max for Live](https://www.ableton.com/en/live/max-for-live/) synthesizers with custom elements, leveraging Javascript to dynamically change the interface without having to alter the patch itself.

Provided is the development device of Lode (`lode-dev.amxd`) and a template device (`template.amxd`) to get you started on building your own device in the same format.

## Using the template device

The `template.amxd` device is a simple polyphonic sinewave synthesizer with an ADSR amp envelope.
To build your own device from the template provided, drag and drop `template.amxd` to a track in Live and open it for editing in Max.

It may however be a good idea to create a renamed copy of `template.amxd` and `poly.template.maxpat` to get started on a new project.

### Changing the synth voice
The DSP is written in [`Gen~`](https://docs.cycling74.com/max8/vignettes/gen_topic) and uses [`poly~`](https://docs.cycling74.com/max8/refpages/poly~) for polyphony (and voice muting). The DSP voice is wrapped into `poly.template.maxpat` which is then instantiated in the main patch. It can be edited by opening the `p dsp` subpatch, then double-clicking on `poly.template.maxpat`, and finally open the `gen~` object inside to view the DSP code.

The DSP is written in a single `codebox` object using `genexpr`. The template synth is a very simple sinewave lookup oscillator using the built-in `cycle` object:
```
osc = cycle(freq) * amp_env;
```

By changing the `osc` output it's possible to build your own synthesizer voice. One nice addition could for example be to add phase modulation from a second oscillator. We can also change the placeholder parameter names `ctl0` and `ctl1` to something more specific pertaining to the functionality of the parameter:

```
// parameters

mod_ratio = in5;
mod_ratio = in6;

...

mod_phase = phasor(freq * mod_ratio);
osc_phase = phasor(freq);

mod = cycle(mod_phase, index = "phase") * mod_depth;
osc = cycle(osc_phase + mod, index = "phase") * amp_env;
```

Note that `Gen~` will only compile for the current voice. Save the `poly.template` patch to apply it to all voices. Another option is to simply set the amount of voices used by the `poly~` object to 1 while working on the `gen~` code.

### Configuring parameters

The UI is built with the [`JSUI`](https://docs.cycling74.com/max8/refpages/jsui) object, using Javascript and [mgraphics](https://docs.cycling74.com/max8/vignettes/jsmgraphics). The interface is configured using the object `dict ---parameters` on launch. This stores a unique configuration of the UI elements in JSON format. From the dict you can edit the look, name and polarity of each parameter of eight.

The parameters are configured in the subpatch `p config`, double-click to open it, then double-click on the `dict ---parameters` object to edit the JSON data.

```
"param_0" : 	{
		"title" : "Ctrl 1",
		"style" : "dial",
		"bipolar" : 0
	}
```

**`title`** sets the title above the parameter

**`style`** sets the visual look of the UI object, available styles are:
* `dial`, a standard control dial
* `slider`, a standard slider
* `decay`, exponential decay curve

**`bipolar`** configures whether the control has an indicator of a bipolar range, i.e a triangle to denote the middle on the dial style.

This lets you draft an interface quickly and with ease. It's also possible to add your own styles in `dial.js` by adding a type to the style switch case in:
```
function paint() {
    with (mgraphics) {
		switch (style) {
        	case "dial":
        	...
```

The hue and lightness of the accent color can also be changed by altering the last entry in `dict --parameters`, with `hue` ranging from 0 to 1 and `lightness` being lighter with lower values:
```
"color" : 	{
		"hue" : 0,
		"lightness" : 2
	}
```

Finally, you might want to change the ranges or naming of the `live.numbox` objects at the top-level of the patcher. These hook in the `JSUI` front-end UI to the controls of the Live API. Note that the values sent/received from the `JSUI` objects use the raw float value `0.0 .. 1.0`

## License
MIT license ([LICENSE](LICENSE) or <http://opensource.org/licenses/MIT>)

## Contributing
We provide this software as-is and in a finished state. We however encourage derivate work in form of forks using Lode or the template synthesizer as a base.
