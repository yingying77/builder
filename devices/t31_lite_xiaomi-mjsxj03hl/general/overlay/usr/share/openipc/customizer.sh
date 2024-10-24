#!/bin/sh
#
# Perform basic settings on a known IP camera
#
#
# Set custom upgrade url
#
fw_setenv upgrade 'https://github.com/yingying77/builder/releases/download/latest/t31_lite_xiaomi-mjsxj03hl-nor.tgz'
#
#
# Set custom majestic settings
#
cli -s .system.plugins true
cli -s .isp.blkCnt 1
cli -s .isp.awbMode auto
cli -s .isp.antiFlicker 60
cli -s .nightMode.irCutPin1 49
cli -s .nightMode.irCutPin2 50
cli -s .nightMode.backlightPin 60
cli -s .nightMode.lightMonitor true
cli -s .nightMode.minThreshold 10
cli -s .nightMode.maxThreshold 100
cli -s .video0.codec h264
cli -s .onvif.enabled true
cli -s .audio.enabled true
cli -s .audio.codec aac
cli -s .audio.sampleRate 8000
cli -s .audio.outputEnable true
cli -s .audio.outputVolume 100
cli -s .audio.speakerPin 63

#
#
# Set wlan device and credentials if need
#
fw_setenv wlandev rtl8189fs-generic
fw_setenv wlanssid Ruijie-sCF5A
fw_setenv wlanpass rongrong77
#
#
# Set osmem and rmem
#
fw_setenv osmem 34M
fw_setenv rmem 30M@0x2200000
#

cd /etc/init.d/
chmod +x S00autoled S00resetbtn
cd /usr/sbin
chmod +x autoled.sh led_control.sh resetd
exit 0
