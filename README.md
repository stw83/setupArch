# Setting up Arch Linux on T470

## Automatically setup


## Manuel changes

### Task Switcher (ALT+TAB)

* System Settings --> Task Switcher --> Select Grid

### Yakuake
change shortcut for terminal
* Show with STRG + F12
* open burger menu on lower right corner
* Configure Keyboard Shortcut
* Search for "Open Retract Yakuake"
* Custom
* STRG + Shift + Space

### Flameshot
* installation downloaded already Shortcut file
* system settings --> shortcut --> custom shortcut

### Fingerprint reader
* run `fprintd-enroll`
* scan right index finger
* Update `/etc/pam.d/sudo` to
```
#%PAM-1.0
auth            sufficient      pam_fprintd.so
auth            include         system-auth
account         include         system-auth
session         include         system-auth
```

### enable colorized pacman
In the file `/etc/pacman.conf` uncomment the line `Color` so that this is the result
```
# Misc options
#UseSyslog
Color
#NoProgressBar
CheckSpace
#VerbosePkgLists
#ParallelDownloads = 5

```