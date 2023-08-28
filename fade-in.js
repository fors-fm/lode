outlets = 1

var color = new Array(4)

var fade_task = new Task(fade_in, this)

var repeats = 50
var interval = 10

var fade_state = 1

function set_color(r, g, b, a) {
	color[0] = r
	color[1] = g
	color[2] = b
	color[3] = a
	
	outlet(0, 'bgfillcolor', color)
}

function fade_in() {
	color[3] = 1 - sigmoid((arguments.callee.task.iterations) / repeats, -0.85)
	outlet(0, 'bgfillcolor', color)
}

function bang() {
	fade_task.interval = interval
	fade_task.repeat(repeats)
	fade_task.execute()
}

function init() {
	color[3] = 1
	outlet(0, 'bgfillcolor', color)
}

function sigmoid(x, y) {
	return (x - x * y) / (y - Math.abs(x) * 2 * y + 1)
}