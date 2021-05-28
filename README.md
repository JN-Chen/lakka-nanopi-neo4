# 这是专门为友善之臂nanopi neo4适配的lakka工程

> support compile host ubuntu 20.04

- sudo apt install docker.io
- cd $(LAKKA_DIR)
- sudo docker build -t lakka .
- sudo docker run --rm -it -v $(pwd):/home/ubuntu lakka
- PROJECT=Rockchip DEVICE=RK3399 ARCH=arm UBOOT_SYSTEM=nanopi4-neo4 make image

如果编译失败，很可能是网络问题，删除Build目录和sources目录下对应的包，重新编译即可

--------------------------------------------------------------------------------

## Lakka - The DIY retro emulation console

Lakka is a lightweight Linux distribution that transforms a small computer into a full blown emulation console.

* **Powerful** - Built on top of the famous RetroArch emulator, Lakka is able to emulate a large range of hardware and has some useful features such as Braid-like rewinding, joypad hotplug and video streaming.
* **User friendly** - Lakka is easy to setup and use. Once installed to your SD card, you just have to put your rom on the card, plug your joypad and enjoy your favorite old games. We also support PS3 and XBox360 controllers so you don't have to buy new ones. 
* **Low cost** - We try our best to keep the hardware required to run Lakka as cheap as possible. The software is optimized to run fast even on low end computers. The power can be supplied by any micro USB adapter like the one for your smartphone.
* **Open source** - Our code is free as in freedom and hosted on Github (though the project uses emulators that forbid commercialisation). We accept external contributions, and we do our best to integrate our own patches into upstream projects.

### Installation instructions

Please refer to our website http://www.lakka.tv/get on how to setup Lakka.

### Support

* [FAQ](https://github.com/libretro/Lakka-LibreELEC/wiki/FAQ)
* #lakkatv on irc.freenode.org
* [Discord](https://discord.gg/BNFR4hM)
* [Forums](https://forums.libretro.com/c/libretro/lakka-tv-general)

