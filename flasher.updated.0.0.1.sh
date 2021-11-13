#!/usr/bin/bash



clear


sleep 0.125 && clear && printf "step [01 | 22]\n\n"
fastboot flash partition gpt.bin
sleep 0.125 && clear && printf "step [02 | 22]\n\n"
fastboot flash bootloader bootloader.img
sleep 0.125 && clear && printf "step [03 | 22]\n\n"
fastboot flash bluetooth BTFM.bin
sleep 0.125 && clear && printf "step [04 | 22]\n\n"
fastboot flash dsp dspso.bin
sleep 0.125 && clear && printf "step [05 | 22]\n\n"
fastboot flash radio radio.img
sleep 0.125 && clear && printf "step [06 | 22]\n\n"
fastboot flash logo logo.bin
sleep 0.125 && clear && printf "freeze | waiting...\n\n"
fastboot reboot fastboot
sleep 0.125 && clear && printf "step [07 | 22]\n\n"
fastboot flash boot boot.img
sleep 0.125 && clear && printf "step [08 | 22]\n\n"
fastboot flash recovery recovery.img
sleep 0.125 && clear && printf "step [09 | 22]\n\n"
fastboot flash dtbo dtbo.img
sleep 0.125 && clear && printf "step [10 | 22]\n\n"
fastboot flash vbmeta vbmeta.img
sleep 0.125 && clear && printf "step [11 | 22]\n\n"
fastboot flash super super.img_sparsechunk.0
sleep 0.125 && clear && printf "step [12 | 22]\n\n"
fastboot flash super super.img_sparsechunk.1
sleep 0.125 && clear && printf "step [13 | 22]\n\n"
fastboot flash super super.img_sparsechunk.2
sleep 0.125 && clear && printf "step [14 | 22]\n\n"
fastboot flash super super.img_sparsechunk.3
sleep 0.125 && clear && printf "step [15 | 22]\n\n"
fastboot flash super super.img_sparsechunk.4
sleep 0.125 && clear && printf "step [16 | 22]\n\n"
fastboot flash super super.img_sparsechunk.5
sleep 0.125 && clear && printf "step [17 | 22]\n\n"
fastboot flash super super.img_sparsechunk.6
sleep 0.125 && clear && printf "step [18 | 22]\n\n"
fastboot flash super super.img_sparsechunk.7
sleep 0.125 && clear && printf "freeze | waiting...\n\n"
fastboot reboot bootloader
sleep 0.125 && clear && printf "step [19 | 22]\n\n"
fastboot erase carrier
sleep 0.125 && clear && printf "step [20 | 22]\n\n"
fastboot erase metadata
sleep 0.125 && clear && printf "step [21 | 22]\n\n"
fastboot erase ddr
sleep 0.125 && clear && printf "step [22 | 22]\n\n"
fastboot erase userdata
sleep 0.125 && clear && printf "everything is done!\n\n"
