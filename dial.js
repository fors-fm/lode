outlets = 1

mgraphics.init()
mgraphics.autofill = 0
mgraphics.relative_coords = 0

var parameters = new Dict("---parameters")

var style = "dial"
var bipolar = false

function set_id(x) {
	param_style = parameters.get("param_" + x + "::style")
	param_range = parameters.get("param_" + x + "::bipolar")
	
	set_style(param_style)
	set_range(param_range)
}

function set_style(x) {
	style = x
	refresh()
    mgraphics.redraw()
}

function set_range(x) {
	bipolar = x ? true : false
	refresh()
    mgraphics.redraw()
}

var value = 0

function set_value(x) {
	value = x
	refresh()
    mgraphics.redraw()
}

// color handling

var lcdcolor = [0.993, 0.654, 0.155, 1.0]
var inactivelcdcolor = [0.475, 0.475, 0.475, 1.0]
var lcdbgcolor = [0.020, 0.020, 0.020, 1.0]
var hovercolor = [
    inactivelcdcolor[0] * 1.7,
    inactivelcdcolor[1] * 1.7,
    inactivelcdcolor[2] * 1.7,
    1.0,
]

function set_lcdcolor(r, g, b, a) {
    lcdcolor = [r, g, b, a]
    refresh()
    mgraphics.redraw()
}

function set_lcdbgcolor(r, g, b, a) {
    lcdbgcolor = [r, g, b, a]
    refresh()
    mgraphics.redraw()
}

function set_inactivelcdcolor(r, g, b, a) {
    inactivelcdcolor = [r, g, b, a]
    hovercolor = [
        inactivelcdcolor[0] * 1.7,
        inactivelcdcolor[1] * 1.7,
        inactivelcdcolor[2] * 1.7,
        1,
    ]
    refresh()
    mgraphics.redraw()
}

// hover transition task

var hover_state = 0
var click_state = 0

var hover_task = new Task(hover_transition, this)
var click_task = new Task(click_transition, this)

var repeats = 50
var repeats_click = 25
var interval = 10

function hover_transition() {
	if (arguments.callee.task.iterations >= repeats) {
		if (hover) {
			hover_state = 1
			mgraphics.redraw()
		} else {
			hover_state = 0
			mgraphics.redraw()
		}
		
		arguments.callee.task.cancel()
	} else {
		mgraphics.redraw()
		
		if (hover) {
			hover_state = sigmoid((arguments.callee.task.iterations / repeats), -0.85)
		} else {
			hover_state = sigmoid(1 - (arguments.callee.task.iterations / repeats), 0.5)
		}
	}
}

function click_transition() {
	if (arguments.callee.task.iterations >= repeats_click) {
		if (clicked) {
			click_state = 1
			mgraphics.redraw()
		} else {
			click_state = 0
			mgraphics.redraw()
		}
		
		arguments.callee.task.cancel()
	} else {
		mgraphics.redraw()
		
		if (clicked) {
			click_state = sigmoid((arguments.callee.task.iterations / repeats_click), -0.85)
		} else {
			click_state = sigmoid(1 - (arguments.callee.task.iterations / repeats_click), 0.7)
		}
	}
}


// mousing states

var hover = 0
var hover_in = false
var click_in = false
var clicked = false

var last_x = 0, last_y = 0
var ratio_x = 0, ratio_y = 0
var click_x = 0, click_y = 0

function onidle(x, y, button, cmd, shift, capslock, option, ctrl) {
	hover = 1
	
	if (!hover_in) {
		hover_task.interval = interval
		hover_task.repeat(repeats)
		hover_task.execute()
		
		hover_in = true
	}
	
    mgraphics.redraw()
}

function onidleout(x, y) {
	hover = 0
	
	if (hover_in) {
		hover_task.interval = interval
		hover_task.repeat(repeats)
		hover_task.execute()
		
		hover_in = false
	}
	
    mgraphics.redraw()
}

function onclick(x, y, but, cmd, shift, capslock, option, ctrl) {
	max.hidecursor()
	
	if (!click_in) {
		clicked = true
	
		click_task.interval = interval
		click_task.repeat(repeats_click)
		click_task.execute()
		
		click_in = true
	}
	
	// calculate the UI zoom factor by getting the ratio of the original box size
	// and the current bpatcher window location affected by the zoom factor
	ratio_x = (patcher.wind.location[2] - patcher.wind.location[0]) / box.rect[2]
	ratio_y = (patcher.wind.location[3] - patcher.wind.location[1]) / box.rect[3]
	
	// store bpatcher position which will be used to calculate the cursor delta
	last_x = patcher.wind.location[0]
	last_y = patcher.wind.location[1]
	
	// get and scale relative cursor position for resetting to initial click location
	click_x = Math.round(patcher.wind.location[0] + x * ratio_x)
	click_y = Math.round(patcher.wind.location[1] + y * ratio_y)
	
	// move cursor to expected position for delta calculation
	max.pupdate(last_x, last_y);
}

function ondblclick(x, y) {
	if (bipolar) {
    	value = 0.5
	} else {
		value = 0
	}

    outlet(0, value)
    mgraphics.redraw()
}

function ondrag(x, y, but, cmd, shift, capslock, option, ctrl) {
    var dy = 0,
        d2y = 0
    var dx = 0,
        d2x = 0

    var delta_x
    var delta_y

	// release cursor and reset position on mouse up
    if (!but) {
		if (click_in) {
			clicked = false
			
			click_task.interval = interval
			click_task.repeat(repeats_click)
			click_task.execute()
		
			click_in = false
		}
	
		max.pupdate(click_x, click_y)
        max.showcursor()

        mgraphics.redraw()
    } else {
		// calculate the delta between initial cursor position and after drag
		dx = (last_x + x) - last_x
		dy = (last_y + y) - last_y

		// increase resolution if shift modifier key is held down
        if (shift) {
            delta_x = 0.0007874015748
            delta_y = 0.0007874015748
        } else {
            delta_x = 0.007874015748
            delta_y = 0.007874015748
        }

		if (style == "slope") {
			delta_x *= 0.5;
			delta_y *= 0.5;
		}
		
		d2x = dx * delta_x
		d2y = dy * delta_y
		
		// add scaled delta to the output value and clamp to parameter range
		value = clamp(value - d2y, 0, 1)

		// reset cursor position if it has changed, we do this to be able to 
		// calculate the delta from the same exact position on every drag
		if (dy > 0 || dy < 0 || dx > 0 || dx < 0) {
			max.pupdate(last_x, last_y)
		}
		
        mgraphics.redraw()
        outlet(0, value)
    }
}

function paint() {
    mgraphics.set_line_cap("round")
    mgraphics.set_line_join("round")
    mgraphics.set_line_width(2)

    with (mgraphics) {
		switch (style) {
			case "dial":
				set_source_rgba(inactivelcdcolor)
				
				arc(18, 18, 12 + click_state, 50 * Math.PI / 180, 130 * Math.PI / 180)
				stroke()
			
				get_lcdcolor(hover_state)
		
				set_line_width(2 + click_state)
				arc(18, 18, 12 + click_state, 130 * Math.PI / 180, 410 * Math.PI / 180)
				stroke()
		
				set_line_width(2 + click_state)
				line_to_angle(18, 18, -230 + value * 280, 0, 7)
				stroke()
				
				set_line_width(2)
				
				if (bipolar) {
					move_to(14, 3 - click_state * 2)
					rel_line_to(8 + click_state, 0)
					rel_line_to(0, 2 + click_state)
					rel_line_to(-4 - click_state, 4)
					rel_line_to(-4 - click_state, -4)
					rel_line_to(0, -2 - click_state)
					fill_preserve()
					
					set_source_rgba(lcdbgcolor)
					stroke()
				}
				
				break
				
			case "slider":
				set_source_rgba(inactivelcdcolor)
				
				for (i = 0; i < 5; ++i) {
					if (bipolar && i == 2) {
						rectangle(12, 7 + i * 5, 12, 2)
					} else {
						rectangle(14, 7 + i * 5, 8, 2)
					}
					fill()
				}
				
				get_lcdcolor(hover_state)
			
				rectangle_rounded(11 - 1 * click_state, 24 - value * 20, 14 + 2 * click_state, 8, 4, 4)
				fill()
		
				set_source_rgba(lcdbgcolor)
				rectangle(14 - 1 * click_state, 27 - value * 20, 8 + 2 * click_state, 2)
				fill()
				break
				
			case "decay":
				set_source_rgba(inactivelcdcolor)
				
				move_to(7 + value * 23, 29)
				line_to(30, 29)
				stroke()
				
				move_to(6, 29)
				rel_line_to(0, -21)
				stroke()
			
				get_lcdcolor(hover_state)
				set_line_width(2 + 1 * click_state)
			
				var x_point = 7 + value * 23
			
				move_to(6, 7)
				curve_to(x_point - (20 * value) + 0.01, 29, x_point, 29, x_point, 29)
				stroke()
				break
				
			case "slope":
				var value_bi = value * 2 - 1
				
				var value_dec = (Math.abs(clamp(value_bi, -1, 0)) * 0.5) + (clamp(value, 0.5, 1) - 0.5) * 2
				var value_atk = (Math.abs(clamp(value_bi, -1, 0)) * 0.5)
			
				set_source_rgba(inactivelcdcolor)
				
				move_to(7 + value_dec * 23 + value_atk * 23, 29)
				line_to(30, 29)
				stroke()
				
				get_lcdcolor(hover_state)
				set_line_width(2 + 1 * click_state)
				
				move_to(6, 29)
				rel_line_to(value_atk * 22, -21)
			
				var x_point = (7 + value_dec * 23) + value_atk * 23
			
				move_to(6 + value_atk * 23, 7)
				curve_to(x_point - (20 * value_dec) + 0.01, 29, x_point, 29, x_point, 29)
				stroke()
				break
				
			case "shape":
				set_source_rgba(inactivelcdcolor)
				
				//move_to(6, 18)
				//line_to(30, 18)
				//stroke()

				get_lcdcolor(hover_state)
				set_line_width(2 + 1 * click_state)
				
				var saw = (1 - clamp(value, 0, 0.5) * 2) * 11
				var pw = ((clamp(value, 0.5, 1) - 0.5) * 2) * 6
				
				move_to(6, 18)
				rel_line_to(0, -11)
				rel_line_to(12 + pw, saw)
				rel_line_to(0, 11 - saw)
				rel_line_to(0, 11 - saw)
				rel_line_to(12 - pw, saw)
				rel_line_to(0, -11)
				stroke()
				
				break
		}
    }
}

// utility functions

function get_lcdcolor(state) {
	mgraphics.set_source_rgba(
		mix(lcdcolor[0], hovercolor[0], state),
		mix(lcdcolor[1], hovercolor[1], state),
		mix(lcdcolor[2], hovercolor[2], state),
		mix(lcdcolor[3], hovercolor[3], state)
	)
}

function sigmoid(x, y) {
	return (x - x * y) / (y - Math.abs(x) * 2 * y + 1)
}

function mix(x, y, a) {
    return x + a * (y - x)
}

function clamp(num, min, max) {
    return num <= min ? min : num >= max ? max : num
}

function line_to_angle(x, y, degrees, offset, length) {
  var angle = degrees * Math.PI / 180
  var cos_angle = Math.cos(angle)
  var sin_angle = Math.sin(angle)

  var x_origin = cos_angle * offset + x 
  var y_origin = sin_angle * offset + y
  var x_destination = cos_angle * length + x_origin
  var y_destination = sin_angle * length + y_origin

  with (mgraphics) {  
    	move_to(x_origin, y_origin)
    	line_to(x_destination, y_destination)
    }
}