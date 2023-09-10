# how to make your own computercraft video!
> [!NOTE]
> your video will be black and white
1. go to https://github.com/Axisok/qtccv
2. click `<> Code ▾`
3. click `🗎 Download ZIP`
4. open cmd and type `pip install numpy` and then `pip install moviepy`
   - if python is not installed, install python 3.11 (or any version of your choice, this tutorial just uses 3.11) from [here](https://python.org/downloads), making sure to enable "add python 3.11 to PATH" in the installer
5. extract the zip you downloaded wherever you want
6. find a video you want to use
   - the file size needs to be pretty low, resolution should be relatively low, if it doesn't fit on a computercraft monitor you can change the max size in the config
7. go into the unzipped folder
8. go into the `encode` folder
9. place your video in the `encode` folder
10. shift + right-click in the file explorer window
11. press `Open PowerShell window here`
12. in powershell, type `py encoder.py -c quadtree -i <video file> -o <output file>.qtv` (MUST have .qtv)
    - this will not work if you didn't add python to path
      - you can do this after installation by opening the start menu and searching `edit environment variables` and clicking on `Edit environment variables for your account`
      - once there, double click on the `Path` entry in the top. on the right, click `New` and then enter your python installation path (default is `%localappdata%\Programs\Python311`)
      - you will also need to add the `Scripts` folder inside of the python folder (default is `%localappdata%\Programs\Python311\Scripts`)
13. once the file finishes encoding, move it into the `sample` folder
    - if you want, you can delete `badapple.qtv`
    > [!WARNING]
    > do **NOT** delete `playbadapple.lua`! rename it to `play[video].lua` instead!
14. now you're going to make a github repository. you can call it whatever you want, just make sure it's public
15. upload the `decode` and `sample` folders to github
    - uploading to github will not work if the qtv file is over 25 MB due to github's restrictions
      - speaking of which, computercraft has a default memory limit of 1 MB, however this can be changed by editing the mod's config
      - there is a hard limit to video size due to how processing the video file works but i'm unsure of exactly what it is
16. go inside of the `sample` folder on github
17. edit `playbadapple.lua`, changing the `https://raw.githubusercontent.com/Axisok/qtccv/master/` link to `https://raw.githubusercontent.com/[YOUR USERNAME]/[REPOSITORY NAME]/main/`
    - make sure you change `master` to `main` in `play[video].lua` or change the github branch `main` to `master`
      - github's default branch name is `main` but the lua file says `master` by default
18. change all mention of `badapple` to whatever your qtv file is called and delete the line that mentions `badapple.nbs`
    - for example, if it says `badapple.qtv`, the new version should say `video.qtv` if your qtv file is called `video`
19. go to [pastebin](https://pastebin.com)
20. paste the contents of `playbadapple.lua` (or whatever you called it if you renamed it) into pastebin
21. create the paste and then copy the last part of the link (the pastebin id)
    - for example, `AaBb1234` from `https://pastebin.com/AaBb1234` (not a real link)
22. go into a computercraft computer with a monitor attached and type `pastebin run [pastebin id]`
23. you should see your video show up on the monitor!
    - if not, double check that the github link in the pastebin is correct and that you correctly replaced all mentions of `badapple`
      - if it still doesn't work, it could be an issue with computercraft memory (which you can change in the mod config) or your qtv file is simply too big to process

## optional improvements
### higher resolution
insert this at the top of `play[video].lua`
```lua
local monitor = peripheral.find("monitor")
monitor.setTextScale(0.5)
```
