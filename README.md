# pomodoro-timer
CLI Pomodoro timer with work and break duration alerts.

This pomodoro-timer is designed to work exclusively for Mac and Linux users.
Note: The sound alerts currently only work for macOS.

Since I no longer use a Mac, I have commented out the call_alert function.
If you are using a Mac, you can locate the pomodoro.mojo file and
uncomment the call_alert function within the display_message function scope.
Additionally, you'll need to modify the file path in the setup_python_path function
to enable the sound alert feature.

### Steps before cloning this repo and running the program
Follow the getting started guide on how to create a mojo project through
this link: https://docs.modular.com/magic

After you have created the mojo project you can then clone this repo inside of your project
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
     magic shell
```

### Run the program directly:
```
     mojo main.mojo
```

![pomo](https://github.com/OsagieDG/pomodoro-timer/blob/main/pomo.png)



