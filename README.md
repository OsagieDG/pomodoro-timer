# pomodoro-timer
CLI Pomodoro timer with work and break duration alerts.

Supported systems: macOS, Linux, and Windows (with WSL).

Note: The sound alerts currently only work for macOS.

for macOS users
Modify the file path of the setup_python_path function
in the pomodoro.mojo file to enable the sound alert feature.

for Linux users
Comment out the call_alert function

### Steps before cloning this repo and running the program
Follow the getting started guide on how to create a mojo project through
this link: https://docs.modular.com/magic

After you have created the mojo project you can then clone this repo
inside of your project
using:
```
     git clone https://github.com/OsagieDG/pomodoro-timer.git
```

Then move into the pomodoro-timer before running the program:
```
     cd pomodoro-timer
```

### Activate the environment shell with:
```
     pixi shell
```

### Run the program directly:
```
     mojo timer.mojo
```

![pomo](https://github.com/OsagieDG/pomodoro-timer/blob/main/pomo.png)



