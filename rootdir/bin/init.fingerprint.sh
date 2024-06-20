#!/vendor/bin/sh
chmod 0200 /sys/devices/platform/soc/soc:fp_fpc*/wakeup_enable
chmod 0600 /sys/devices/platform/soc/soc:fp_fpc*/irq
chmod 0600 /sys/devices/platform/soc/soc:fp_fpc*/hw_reset
chown system system /sys/devices/platform/soc/soc:fp_fpc*/hw_reset
chown system system /sys/devices/platform/soc/soc:fp_fpc*/wakeup_enable
chown system system /sys/devices/platform/soc/soc:fp_fpc*/irq