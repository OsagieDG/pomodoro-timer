from time import sleep
from python import Python


@always_inline
fn setup_python_path() raises:
    var sys = Python.import_module("sys")
    sys.path.append("/Users/dgodstand/mojo-repo/pomodoro-timer/pomo")

@always_inline
fn call_alert(message: String) raises:
    setup_python_path()
    var alert_module = Python.import_module("alert")
    alert_module.alert_user(message)

@always_inline
fn start_pomodoro_timer() raises:
    var is_working = True
    var Work_Duration: Int16 = 50 * 60
    var Break_Duration: Int16 = 10 * 60

    while True:
        if is_working:
            display_message("Start working for 50 minutes")
            start_timer(Work_Duration)
        else:
            display_message("Take a break for 10 minutes")
            start_timer(Break_Duration)
        is_working = not is_working

@always_inline
fn update_display(seconds_remaining: Int16):
    var minutes = seconds_remaining // 60
    var seconds = seconds_remaining % 60
    print("\rTimer 🍅⏳", minutes, ":", seconds, end="")

@always_inline
fn display_message(message: String) raises:
    print("\n", message)
    call_alert(message)

@always_inline
fn start_timer(duration: Int16) raises:
    var seconds_remaining = duration

    while seconds_remaining > 0:
        sleep(1.0)
        seconds_remaining -= 1
        update_display(seconds_remaining)
    display_message("Time's up!")

