# Mocp waybar integrated widget module

Mocp is a minimal, terminal based music player. This repo adds the support to control the playback of mocp using waybar.
![image](https://github.com/user-attachments/assets/54e9cea5-414c-47ba-bb81-5f59d60025d5)



### No track playing
![image](https://github.com/user-attachments/assets/3f5bc8ad-ff4f-4c6b-a597-177a0095eb1b)
### Playing track
![image](https://github.com/user-attachments/assets/a2a382ba-eb14-4685-ae67-77f14738f94b)


## Instructions
- Copy the jsonc to the `~/.config/waybar/modules/`
- Copy the script to `~/.local/share/bin/`
- Add the widget to `~/.config/waybar/config.ctl` like in the below image:
  ![image](https://github.com/user-attachments/assets/b1449f8d-a58a-4eba-bfbb-69bdb454cb53)
Here 1 represents that the current bar is active and `custom/mocp` is name of the module.
