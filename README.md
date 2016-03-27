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

![Android One](http://news.bbcimg.co.uk/media/images/77588000/jpg/_77588715_09e78d0d-b02b-418e-8bd0-a4176c985978.jpg "All three android one devices")

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
