extends Timer

signal counted_down(number)

@export var _time := 5

func _timer_down():
	wait_time = _time

func _on_timer_update():
	if _time > wait_time:
		await _time
