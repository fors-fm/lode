var input_color = []
var input_inactive = []
var output_color = []
var hue_shift = 0
var light = 2
var alpha = 1
var sat = 4

var parameters = new Dict("---parameters")

var fade_task = new Task(color_fade, this)

var repeats = 50
var interval = 10

var fade_direction = 0

function color_fade() {
	var mix_factor
	
	if (fade_direction) {
		if (arguments.callee.task.iterations >= repeats) {
			mix_factor = 1
		} else {
			mix_factor = sigmoid((arguments.callee.task.iterations) / repeats, -0.75)
		}
	} else {
		if (arguments.callee.task.iterations >= repeats) {
			mix_factor = 0
		} else {
			mix_factor = 1 - sigmoid((arguments.callee.task.iterations) / repeats, -0.85)
		}
	}
	
	var r = mix(output_color[0], input_inactive[0], mix_factor)
	var g = mix(output_color[1], input_inactive[1], mix_factor)
	var b = mix(output_color[2], input_inactive[2], mix_factor)
	
	outlet(0, r, g, b, alpha)
}

function bang() {
	var hue = parameters.get("color::hue")
	var lightness = parameters.get("color::lightness")
	
	set_hue(hue)
	set_light(lightness)
}

function set_state(x) {
	if (x) {
		fade_direction = 0
		fade_task.interval = interval
		fade_task.repeat(repeats)
		fade_task.execute()
		
	} else {
		fade_direction = 1
		fade_task.interval = interval
		fade_task.repeat(repeats)
		fade_task.execute()
	}
}

function set_hue(x) {
    hue_shift = x
    convert(input_color[0], input_color[1], input_color[2])
}

function set_light(x) {
    light = x
    convert(input_color[0], input_color[1], input_color[2])
}

function set_sat(x) {
    sat = x
    convert(input_color[0], input_color[1], input_color[2])
}

function set_inactive(r, g, b, a) {
	input_inactive[0] = r
    input_inactive[1] = g
    input_inactive[2] = b
    input_inactive[3] = a
}

function input(r, g, b, a) {
    input_color[0] = r
    input_color[1] = g
    input_color[2] = b
    input_color[3] = a

    alpha = a
    convert(r, g, b)
}

function convert(r, g, b) {
    var hsl_conv = rgb2hsl(r * 255, g * 255, b * 255)

    output_color = hsl2rgb(
        hsl_conv[0] + hue_shift,
        hsl_conv[1],
        hsl_conv[2]
    )
    outlet(0, [output_color[0], output_color[1], output_color[2], alpha])
}

function rgb2hsl(r, g, b) {
    ;(r /= 255), (g /= 255), (b /= 255)

    var max = Math.max(r, g, b),
        min = Math.min(r, g, b)
    var h,
        s,
        l = (max + min) / light

    if (max == min) {
        h = s = 0
    } else {
        var d = max - min
        s = l > 0.5 ? d / (2 - max - min) : d / (max + min)

        switch (max) {
            case r:
                h = (g - b) / d + (g < b ? 6 : 0)
                break

            case g:
                h = (b - r) / d + 2
                break

            case b:
                h = (r - g) / d + 4
                break
        }
        h /= 6
    }
    return [h, s, l]
}

function hsl2rgb(h, s, l) {
    var r, g, b

    if (s == 0) {
        r = g = b = l
    } else {
        function hue2rgb(p, q, t) {
            if (t < 0) t += 1
            if (t > 1) t -= 1
            if (t < 1 / 6) return p + (q - p) * 6 * t
            if (t < 1 / 2) return q
            if (t < 2 / 3) return p + (q - p) * (2 / 3 - t) * 6

            return p
        }

        var q = l < 0.5 ? l * (1 + s) : l + s - l * s
        var p = 2 * l - q

        r = hue2rgb(p, q, h + 1 / 3)
        g = hue2rgb(p, q, h)
        b = hue2rgb(p, q, h - 1 / 3)
    }

    return [r, g, b]
}

function clamp(num, min, max) {
    return num <= min ? min : num >= max ? max : num
}

function sigmoid(x, y) {
	return (x - x * y) / (y - Math.abs(x) * 2 * y + 1)
}

function mix(x, y, a) {
    return x + a * (y - x)
}