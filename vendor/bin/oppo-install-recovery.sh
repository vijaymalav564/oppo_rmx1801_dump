#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:40830232:eed1684e25eeefcf423447100b621957e1e270f9; then
  applypatch  \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:13423892:8098fb03adcd271c9158a815d8d709c0918289d2 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:40830232:eed1684e25eeefcf423447100b621957e1e270f9 && \
      log -t recovery "Installing new oppo recovery image: succeeded" && \
      setprop ro.recovery.updated true || \
      log -t recovery "Installing new oppo recovery image: failed" && \
      setprop ro.recovery.updated false
else
  log -t recovery "Recovery image already installed"
  setprop ro.recovery.updated true
fi
