Lenovo A820
==============

Lenovo A820 was released in 2013.

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | 1.2GHz Quad-Core MT6589
GPU     | Imagination Technologies PowerVR SGX544
Memory  | 1GB RAM
Shipped Android Version | 4.1.2
Storage | 4GB
Battery | 2000 mAh
Display | 4.5" 960 x 540 px
Camera  | 8MPx

![Lenovo A820](http://cdn2.gsmarena.com/vv/pics/lenovo/lenovo-a820.jpg "Lenovo A820 device")

This branch is for building CyanogenMod 11 (or Android KitKat 4.4 AOSP based roms) ROMS.



# Build
* Compilation

        # repo init -u git://github.com/fire855/android.git -b cm-12.1
        
        # repo sync
        
        # source build/envsetup.sh
        
        # brunch cm_k1_turbo-eng

# MTK

Few words about mtk related binaries, services and migration peculiarities.

# Limitations

Services requires root:

`system/core/rootdir/init.rc`

  * surfaceflinger depends on sched_setscheduler calls, unable to change process priority from 'system' user (default user 'system')

  * mediaserver depends on /data/nvram folder access, unable to do voice calls from 'media' user (default user 'media')
