import common
import edify_generator

def WritePolicyConfig(info):
    try:
	file_contexts = info.input_zip.read("META/file_contexts")
	common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
    except KeyError:
 	print "warning: file_context missing from target;"

def ReplaceLine(info):
    edify = info.script
    for i in xrange(len(edify.script)):
	if 'getprop("ro.product.device") == "vs985" || abort("This package is for \\"vs985\\" devices; this is a \\"" + getprop("ro.product.device") + "\\".");' in edify.script[i]:
           edify.script[i] = edify.script[i].replace('getprop("ro.product.device") == "vs985" || abort("This package is for \\"vs985\\" devices; this is a \\"" + getprop("ro.product.device") + "\\".");', 
'assert(getprop("ro.product.device") == "g3" || getprop("ro.build.product") == "g3" ||\n\
       getprop("ro.product.device") == "vs985" || getprop("ro.build.product") == "vs985" || abort("This package is for \\"g3,vs985\\" devices; this is a \\"" + getprop("ro.product.device") + "\\"."););')
    return

def AddBackupTool(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "ui_print(\"Formatting system...\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("ui_print(\"Formatting system...\");", 
		'package_extract_file(\"system/bin/backuptool.sh\", \"/tmp/backuptool.sh\");\n\
package_extract_file(\"system/bin/backuptool.functions\", \"/tmp/backuptool.functions\");\n\
set_perm(0, 0, 0777, \"/tmp/backuptool.sh\");\n\
set_perm(0, 0, 0644, \"/tmp/backuptool.functions\");\n\
run_program(\"/tmp/backuptool.sh\", \"backup\");\n\
ui_print("Formatting system...");')

def RemoveLine1(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "set_perm_recursive(0, 0, 0755, 0644, \"/system\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("set_perm_recursive(0, 0, 0755, 0644, \"/system\");", 
		'')

def RemoveLine2(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "set_perm_recursive(0, 2000, 0755, 0755, \"/system/xbin\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("set_perm_recursive(0, 2000, 0755, 0755, \"/system/xbin\");", 
		'')

def RemoveLine3(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "set_perm_(0, 0, 0755, \"/system/xbin\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("set_perm(0, 0, 0755, \"/system/xbin\");", 
		'')

def AddSetMetaData(info):
    edify = info.script
    for i in xrange(len(edify.script)):
	if "ui_print(\"Set permission...\");" in edify.script[i]:
	    edify.script[i] = edify.script[i].replace("ui_print(\"Set permission...\");",
'ui_print(\"Set permission...\");\n\
set_metadata_recursive(\"/system\", \"uid\", 0, \"gid\", 0, \"dmode\", 0755, \"fmode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata_recursive(\"/system/bin\", \"uid\", 0, \"gid\", 2000, \"dmode\", 0755, \"fmode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/bin/app_process\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:zygote_exec:s0\");\n\
set_metadata(\"/system/bin/clatd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:clatd_exec:s0\");\n\
set_metadata(\"/system/bin/debuggerd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:debuggerd_exec:s0\");\n\
set_metadata(\"/system/bin/dhcpcd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:dhcp_exec:s0\");\n\
set_metadata(\"/system/bin/dnsmasq\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:dnsmasq_exec:s0\");\n\
set_metadata(\"/system/bin/drmserver\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:drmserver_exec:s0\");\n\
set_metadata(\"/system/bin/hostapd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:hostapd_exec:s0\");\n\
set_metadata(\"/system/bin/installd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:installd_exec:s0\");\n\
set_metadata(\"/system/bin/keystore\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:keystore_exec:s0\");\n\
set_metadata(\"/system/bin/mediaserver\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:mediaserver_exec:s0\");\n\
set_metadata(\"/system/bin/mksh\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:shell_exec:s0\");\n\
set_metadata(\"/system/bin/mtpd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:mtp_exec:s0\");\n\
set_metadata(\"/system/bin/netcfg\", \"uid\", 0, \"gid\", 3003, \"mode\", 02750, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/bin/netd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:netd_exec:s0\");\n\
set_metadata(\"/system/bin/ping\", \"uid\", 0, \"gid\", 0, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:ping_exec:s0\");\n\
set_metadata(\"/system/bin/pppd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:ppp_exec:s0\");\n\
set_metadata(\"/system/bin/racoon\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:racoon_exec:s0\");\n\
set_metadata(\"/system/bin/rild\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:rild_exec:s0\");\n\
set_metadata(\"/system/bin/run-as\", \"uid\", 0, \"gid\", 2000, \"mode\", 0750, \"capabilities\", 0xc0, \"selabel\", \"u:object_r:runas_exec:s0\");\n\
set_metadata(\"/system/bin/sdcard\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:sdcardd_exec:s0\");\n\
set_metadata(\"/system/bin/servicemanager\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:servicemanager_exec:s0\");\n\
set_metadata(\"/system/bin/surfaceflinger\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:surfaceflinger_exec:s0\");\n\
set_metadata(\"/system/bin/vold\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:vold_exec:s0\");\n\
set_metadata(\"/system/bin/wpa_supplicant\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:wpa_exec:s0\");\n\
set_metadata_recursive(\"/system/etc/dhcpcd\", \"uid\", 0, \"gid\", 0, \"dmode\", 0755, \"fmode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:dhcp_system_file:s0\");\n\
set_metadata(\"/system/etc/dhcpcd/dhcpcd-run-hooks\", \"uid\", 1014, \"gid\", 2000, \"mode\", 0550, \"capabilities\", 0x0, \"selabel\", \"u:object_r:dhcp_system_file:s0\");\n\
set_metadata_recursive(\"/system/etc/init.d\", \"uid\", 0, \"gid\", 2000, \"dmode\", 0755, \"fmode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/etc/init.d\", \"uid\", 0, \"gid\", 0, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata_recursive(\"/system/etc/ppp\", \"uid\", 0, \"gid\", 0, \"dmode\", 0755, \"fmode\", 0555, \"capabilities\", 0x0, \"selabel\", \"u:object_r:ppp_system_file:s0\");\n\
set_metadata(\"/system/vendor\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata_recursive(\"/system/vendor/etc\", \"uid\", 0, \"gid\", 2000, \"dmode\", 0755, \"fmode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/vendor/etc/audio_effects.conf\", \"uid\", 0, \"gid\", 0, \"mode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata_recursive(\"/system/vendor/firmware\", \"uid\", 0, \"gid\", 2000, \"dmode\", 0755, \"fmode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/vendor/lib\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata_recursive(\"/system/vendor/lib/drm\", \"uid\", 0, \"gid\", 2000, \"dmode\", 0755, \"fmode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/vendor/lib/drm/libdrmwvmplugin.so\", \"uid\", 0, \"gid\", 0, \"mode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/vendor/lib/egl\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata_recursive(\"/system/vendor/lib/hw\", \"uid\", 0, \"gid\", 2000, \"dmode\", 0755, \"fmode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/vendor/lib/hw/sensors.msm8974.so\", \"uid\", 0, \"gid\", 0, \"mode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata_recursive(\"/system/vendor/lib/mediadrm\", \"uid\", 0, \"gid\", 2000, \"dmode\", 0755, \"fmode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/vendor/lib/mediadrm/libwvdrmengine.so\", \"uid\", 0, \"gid\", 0, \"mode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata_recursive(\"/system/xbin\", \"uid\", 0, \"gid\", 2000, \"dmode\", 0755, \"fmode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/xbin/librank\", \"uid\", 0, \"gid\", 0, \"mode\", 06755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/xbin/procmem\", \"uid\", 0, \"gid\", 0, \"mode\", 06755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/xbin/procrank\", \"uid\", 0, \"gid\", 0, \"mode\", 06755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/xbin/su\", \"uid\", 0, \"gid\", 0, \"mode\", 06755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:su_exec:s0\");\n\
set_metadata(\"/system/xbin/shelld\", \"uid\", 0, \"gid\", 1000, \"mode\", 06754, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/xbin/lbesec\", \"uid\", 0, \"gid\", 1000, \"mode\", 06754, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_perm(0, 1000, 06750, \"/system/xbin/shelld\");')

def AddAssertions(info):
    info.script.AppendExtra('package_extract_file("system/bin/backuptool.sh", "/tmp/backuptool.sh");');
    info.script.AppendExtra('package_extract_file("system/bin/backuptool.functions", "/tmp/backuptool.functions");');
    info.script.AppendExtra('set_perm(0, 0, 0777, \"/tmp/backuptool.sh\");');
    info.script.AppendExtra('set_perm(0, 0, 0644, \"/tmp/backuptool.functions\");');
    info.script.AppendExtra('run_program("/tmp/backuptool.sh", "restore");');
    return

def FixSymlink(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "ui_print(\"Creating system links...\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("ui_print(\"Creating system links...\");", 
		'ui_print(\"Creating system links...\");\n\
symlink(\"/data/misc/audio/mbhc.bin\", \"/system/etc/firmware/wcd9320/wcd9320_mbhc.bin\");\n\
symlink(\"/data/misc/audio/wcd9320_anc.bin\", \"/system/etc/firmware/wcd9320/wcd9320_anc.bin\");\n\
symlink(\"/data/misc/audio/wcd9320_mad_audio.bin\", \"/system/etc/firmware/wcd9320/wcd9320_mad_audio.bin\");\n\
symlink(\"/data/misc/wifi/WCNSS_qcom_cfg.ini\", \"/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini\");\n\
symlink(\"/firmware/image/dxhdcp2.b00\", \"/system/etc/firmware/dxhdcp2.b00\");\n\
symlink(\"/firmware/image/dxhdcp2.b01\", \"/system/etc/firmware/dxhdcp2.b01\");\n\
symlink(\"/firmware/image/dxhdcp2.b02\", \"/system/etc/firmware/dxhdcp2.b02\");\n\
symlink(\"/firmware/image/dxhdcp2.b03\", \"/system/etc/firmware/dxhdcp2.b03\");\n\
symlink(\"/firmware/image/dxhdcp2.mdt\", \"/system/etc/firmware/dxhdcp2.mdt\");\n\
symlink(\"/firmware/image/keymaste.b00\", \"/system/etc/firmware/keymaster.b00\");\n\
symlink(\"/firmware/image/keymaste.b01\", \"/system/etc/firmware/keymaster.b01\");\n\
symlink(\"/firmware/image/keymaste.b02\", \"/system/etc/firmware/keymaster.b02\");\n\
symlink(\"/firmware/image/keymaste.b03\", \"/system/etc/firmware/keymaster.b03\");\n\
symlink(\"/firmware/image/keymaste.mdt\", \"/system/etc/firmware/keymaster.mdt\");\n\
symlink(\"/firmware/image/mlserver.b00\", \"/system/etc/firmware/mlserverapp.b00\");\n\
symlink(\"/firmware/image/mlserver.b01\", \"/system/etc/firmware/mlserverapp.b01\");\n\
symlink(\"/firmware/image/mlserver.b02\", \"/system/etc/firmware/mlserverapp.b02\");\n\
symlink(\"/firmware/image/mlserver.b03\", \"/system/etc/firmware/mlserverapp.b03\");\n\
symlink(\"/firmware/image/mlserver.mdt\", \"/system/etc/firmware/mlserverapp.mdt\");\n\
symlink(\"/firmware/image/tqs.b00\", \"/system/etc/firmware/tqs.b00\");\n\
symlink(\"/firmware/image/tqs.b01\", \"/system/etc/firmware/tqs.b01\");\n\
symlink(\"/firmware/image/tqs.b02\", \"/system/etc/firmware/tqs.b02\");\n\
symlink(\"/firmware/image/tqs.b03\", \"/system/etc/firmware/tqs.b03\");\n\
symlink(\"/firmware/image/tqs.mdt\", \"/system/etc/firmware/tqs.mdt\");\n\
symlink(\"/firmware/image/wcnss.b00\", \"/system/vendor/firmware/wcnss.b00\");\n\
symlink(\"/firmware/image/wcnss.b01\", \"/system/vendor/firmware/wcnss.b01\");\n\
symlink(\"/firmware/image/wcnss.b02\", \"/system/vendor/firmware/wcnss.b02\");\n\
symlink(\"/firmware/image/wcnss.b04\", \"/system/vendor/firmware/wcnss.b04\");\n\
symlink(\"/firmware/image/wcnss.b06\", \"/system/vendor/firmware/wcnss.b06\");\n\
symlink(\"/firmware/image/wcnss.b07\", \"/system/vendor/firmware/wcnss.b07\");\n\
symlink(\"/firmware/image/wcnss.b08\", \"/system/vendor/firmware/wcnss.b08\");\n\
symlink(\"/firmware/image/wcnss.b09\", \"/system/vendor/firmware/wcnss.b09\");\n\
symlink(\"/firmware/image/wcnss.mdt\", \"/system/vendor/firmware/wcnss.mdt\");\n\
symlink(\"Roboto-Bold.ttf\", \"/system/fonts/DroidSans-Bold.ttf\");\n\
symlink(\"Roboto-Regular.ttf\", \"/system/fonts/DroidSans.ttf\");\n\
symlink(\"busybox\", \"/system/xbin/[\", \"/system/xbin/[[\",\n\
        \"/system/xbin/adjtimex\", \"/system/xbin/arp\", \"/system/xbin/ash\",\n\
        \"/system/xbin/awk\", \"/system/xbin/base64\", \"/system/xbin/basename\",\n\
        \"/system/xbin/bbconfig\", \"/system/xbin/blkid\", \"/system/xbin/blockdev\",\n\
        \"/system/xbin/brctl\", \"/system/xbin/bunzip2\", \"/system/xbin/bzcat\",\n\
        \"/system/xbin/bzip2\", \"/system/xbin/cal\", \"/system/xbin/cat\",\n\
        \"/system/xbin/catv\", \"/system/xbin/chattr\", \"/system/xbin/chgrp\",\n\
        \"/system/xbin/chmod\", \"/system/xbin/chown\", \"/system/xbin/chroot\",\n\
        \"/system/xbin/clear\", \"/system/xbin/cmp\", \"/system/xbin/comm\",\n\
        \"/system/xbin/cp\", \"/system/xbin/cpio\", \"/system/xbin/crond\",\n\
        \"/system/xbin/crontab\", \"/system/xbin/cut\", \"/system/xbin/date\",\n\
        \"/system/xbin/dc\", \"/system/xbin/dd\", \"/system/xbin/depmod\",\n\
        \"/system/xbin/devmem\", \"/system/xbin/df\", \"/system/xbin/diff\",\n\
        \"/system/xbin/dirname\", \"/system/xbin/dmesg\", \"/system/xbin/dnsd\",\n\
        \"/system/xbin/dos2unix\", \"/system/xbin/du\", \"/system/xbin/echo\",\n\
        \"/system/xbin/ed\", \"/system/xbin/egrep\", \"/system/xbin/env\",\n\
        \"/system/xbin/expand\", \"/system/xbin/expr\", \"/system/xbin/false\",\n\
        \"/system/xbin/fbsplash\", \"/system/xbin/fdisk\", \"/system/xbin/fgrep\",\n\
        \"/system/xbin/find\", \"/system/xbin/flash_lock\",\n\
        \"/system/xbin/flash_unlock\", \"/system/xbin/flashcp\",\n\
        \"/system/xbin/flock\", \"/system/xbin/fold\", \"/system/xbin/free\",\n\
        \"/system/xbin/freeramdisk\", \"/system/xbin/fstrim\", \"/system/xbin/fsync\",\n\
        \"/system/xbin/ftpget\", \"/system/xbin/ftpput\", \"/system/xbin/fuser\",\n\
        \"/system/xbin/getopt\", \"/system/xbin/grep\", \"/system/xbin/groups\",\n\
        \"/system/xbin/gunzip\", \"/system/xbin/gzip\", \"/system/xbin/halt\",\n\
        \"/system/xbin/head\", \"/system/xbin/hexdump\", \"/system/xbin/id\",\n\
        \"/system/xbin/ifconfig\", \"/system/xbin/inetd\", \"/system/xbin/insmod\",\n\
        \"/system/xbin/install\", \"/system/xbin/ionice\", \"/system/xbin/iostat\",\n\
        \"/system/xbin/ip\", \"/system/xbin/kill\", \"/system/xbin/killall\",\n\
        \"/system/xbin/killall5\", \"/system/xbin/less\", \"/system/xbin/ln\",\n\
        \"/system/xbin/losetup\", \"/system/xbin/ls\", \"/system/xbin/lsattr\",\n\
        \"/system/xbin/lsmod\", \"/system/xbin/lsusb\", \"/system/xbin/lzcat\",\n\
        \"/system/xbin/lzma\", \"/system/xbin/lzop\", \"/system/xbin/lzopcat\",\n\
        \"/system/xbin/man\", \"/system/xbin/md5sum\", \"/system/xbin/mesg\",\n\
        \"/system/xbin/mkdir\", \"/system/xbin/mke2fs\", \"/system/xbin/mkfifo\",\n\
        \"/system/xbin/mkfs.ext2\", \"/system/xbin/mkfs.vfat\",\n\
        \"/system/xbin/mknod\", \"/system/xbin/mkswap\", \"/system/xbin/mktemp\",\n\
        \"/system/xbin/modinfo\", \"/system/xbin/modprobe\", \"/system/xbin/more\",\n\
        \"/system/xbin/mount\", \"/system/xbin/mountpoint\", \"/system/xbin/mpstat\",\n\
        \"/system/xbin/mv\", \"/system/xbin/nanddump\", \"/system/xbin/nandwrite\",\n\
        \"/system/xbin/nbd-client\", \"/system/xbin/netstat\", \"/system/xbin/nice\",\n\
        \"/system/xbin/nohup\", \"/system/xbin/nslookup\", \"/system/xbin/ntpd\",\n\
        \"/system/xbin/od\", \"/system/xbin/patch\", \"/system/xbin/pgrep\",\n\
        \"/system/xbin/pidof\", \"/system/xbin/ping\", \"/system/xbin/pipe_progress\",\n\
        \"/system/xbin/pkill\", \"/system/xbin/pmap\", \"/system/xbin/poweroff\",\n\
        \"/system/xbin/printenv\", \"/system/xbin/printf\", \"/system/xbin/ps\",\n\
        \"/system/xbin/pstree\", \"/system/xbin/pwd\", \"/system/xbin/pwdx\",\n\
        \"/system/xbin/rdev\", \"/system/xbin/readlink\", \"/system/xbin/realpath\",\n\
        \"/system/xbin/renice\", \"/system/xbin/reset\", \"/system/xbin/resize\",\n\
        \"/system/xbin/rev\", \"/system/xbin/rm\", \"/system/xbin/rmdir\",\n\
        \"/system/xbin/rmmod\", \"/system/xbin/route\", \"/system/xbin/run-parts\",\n\
        \"/system/xbin/rx\", \"/system/xbin/sed\", \"/system/xbin/seq\",\n\
        \"/system/xbin/setconsole\", \"/system/xbin/setserial\",\n\
        \"/system/xbin/setsid\", \"/system/xbin/sh\", \"/system/xbin/sha1sum\",\n\
        \"/system/xbin/sha256sum\", \"/system/xbin/sha3sum\",\n\
        \"/system/xbin/sha512sum\", \"/system/xbin/sleep\", \"/system/xbin/sort\",\n\
        \"/system/xbin/split\", \"/system/xbin/stat\", \"/system/xbin/strings\",\n\
        \"/system/xbin/stty\", \"/system/xbin/sum\", \"/system/xbin/swapoff\",\n\
        \"/system/xbin/swapon\", \"/system/xbin/sync\", \"/system/xbin/sysctl\",\n\
        \"/system/xbin/tac\", \"/system/xbin/tail\", \"/system/xbin/tar\",\n\
        \"/system/xbin/taskset\", \"/system/xbin/tee\", \"/system/xbin/telnet\",\n\
        \"/system/xbin/telnetd\", \"/system/xbin/test\", \"/system/xbin/tftp\",\n\
        \"/system/xbin/tftpd\", \"/system/xbin/time\", \"/system/xbin/timeout\",\n\
        \"/system/xbin/top\", \"/system/xbin/touch\", \"/system/xbin/tr\",\n\
        \"/system/xbin/traceroute\", \"/system/xbin/true\", \"/system/xbin/ttysize\",\n\
        \"/system/xbin/tune2fs\", \"/system/xbin/umount\", \"/system/xbin/uname\",\n\
        \"/system/xbin/uncompress\", \"/system/xbin/unexpand\", \"/system/xbin/uniq\",\n\
        \"/system/xbin/unix2dos\", \"/system/xbin/unlzma\", \"/system/xbin/unlzop\",\n\
        \"/system/xbin/unxz\", \"/system/xbin/unzip\", \"/system/xbin/uptime\",\n\
        \"/system/xbin/usleep\", \"/system/xbin/uudecode\", \"/system/xbin/uuencode\",\n\
        \"/system/xbin/vi\", \"/system/xbin/watch\", \"/system/xbin/wc\",\n\
        \"/system/xbin/wget\", \"/system/xbin/which\", \"/system/xbin/whoami\",\n\
        \"/system/xbin/xargs\", \"/system/xbin/xz\", \"/system/xbin/xzcat\",\n\
        \"/system/xbin/yes\",\n\
        \"/system/xbin/zcat\");\n\
symlink(\"libGLESv2.so\", \"/system/lib/libGLESv3.so\");\n\
symlink(\"mksh\", \"/system/bin/sh\");\n\
symlink(\"mount.exfat\", \"/system/bin/fsck.exfat\",\n\
        \"/system/bin/mkfs.exfat\");\n\
symlink(\"toolbox\", \"/system/bin/cat\", \"/system/bin/chcon\",\n\
        \"/system/bin/chmod\", \"/system/bin/chown\", \"/system/bin/clear\",\n\
        \"/system/bin/cmp\", \"/system/bin/cp\", \"/system/bin/date\",\n\
        \"/system/bin/dd\", \"/system/bin/df\", \"/system/bin/dmesg\",\n\
        \"/system/bin/du\", \"/system/bin/getenforce\", \"/system/bin/getevent\",\n\
        \"/system/bin/getprop\", \"/system/bin/getsebool\", \"/system/bin/grep\",\n\
        \"/system/bin/hd\", \"/system/bin/id\", \"/system/bin/ifconfig\",\n\
        \"/system/bin/iftop\", \"/system/bin/insmod\", \"/system/bin/ioctl\",\n\
        \"/system/bin/ionice\", \"/system/bin/kill\", \"/system/bin/ln\",\n\
        \"/system/bin/load_policy\", \"/system/bin/log\", \"/system/bin/ls\",\n\
        \"/system/bin/lsmod\", \"/system/bin/lsof\", \"/system/bin/md5\",\n\
        \"/system/bin/mkdir\", \"/system/bin/mkswap\", \"/system/bin/mount\",\n\
        \"/system/bin/mv\", \"/system/bin/nandread\", \"/system/bin/netstat\",\n\
        \"/system/bin/newfs_msdos\", \"/system/bin/notify\", \"/system/bin/printenv\",\n\
        \"/system/bin/ps\", \"/system/bin/r\", \"/system/bin/readlink\",\n\
        \"/system/bin/renice\", \"/system/bin/restorecon\", \"/system/bin/rm\",\n\
        \"/system/bin/rmdir\", \"/system/bin/rmmod\", \"/system/bin/route\",\n\
        \"/system/bin/runcon\", \"/system/bin/schedtop\", \"/system/bin/sendevent\",\n\
        \"/system/bin/setconsole\", \"/system/bin/setenforce\",\n\
        \"/system/bin/setprop\", \"/system/bin/setsebool\", \"/system/bin/sleep\",\n\
        \"/system/bin/smd\", \"/system/bin/start\", \"/system/bin/stop\",\n\
        \"/system/bin/swapoff\", \"/system/bin/swapon\", \"/system/bin/sync\",\n\
        \"/system/bin/top\", \"/system/bin/touch\", \"/system/bin/umount\",\n\
        \"/system/bin/uptime\", \"/system/bin/vmstat\", \"/system/bin/watchprops\",\n\
        \"/system/bin/wipe\");')

def FullOTA_InstallEnd(info):
    AddSetMetaData(info)
    ReplaceLine(info)
    AddBackupTool(info)
    AddAssertions(info)
    FixSymlink(info)
    RemoveLine1(info)
    RemoveLine2(info)
    RemoveLine3(info)
    WritePolicyConfig(info)

def IncrementalOTA_InstallEnd(info):
    AddSetMetaData(info)
    ReplaceLine(info)
    AddBackupTool(info)
    AddAssertions(info)
    FixSymlink(info)
    RemoveLine1(info)
    RemoveLine2(info)
    RemoveLine3(info)
    WritePolicyConfig(info)
