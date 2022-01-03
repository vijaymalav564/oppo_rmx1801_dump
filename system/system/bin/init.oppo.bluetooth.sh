#! /system/bin/sh
#***********************************************************
#** Copyright (C), 2008-2016, OPPO Mobile Comm Corp., Ltd.
#** VENDOR_EDIT
#**
#** Version: 1.0
#** Date : 2019/06/25
#** Author: Liangwen.Ke@PSW.CN.BT.Basic.Customize.2120948
#** Add  for supporting QC firmware update by sau_res
#**
#** ---------------------Revision History: ---------------------
#**  <author>    <data>       <version >       <desc>
#**  Liangwen.Ke 2019.6.25      1.0            build this module
#****************************************************************/

config="$1"

saufwdir="/data/oppo/common/sau_res/res/SAU-AUTO_LOAD_FW-10/"
pushfwdir="/data/vendor/bluetooth/fw/"
pushdatadir="data/misc/bluedroid/"

# cp bt sau file to data/vendor/bluetooth dir
function btfirmwareupdate() {

    if [ -f ${saufwdir}/crbtfw21.tlv ]; then
        cp  ${saufwdir}/crbtfw21.tlv  ${pushfwdir}
        chown bluetooth:bluetooth ${pushfwdir}/crbtfw21.tlv
        chmod 0440 bluetooth:bluetooth ${pushfwdir}/crbtfw21.tlv
    fi

    if [ -f ${saufwdir}/crnv21.bin ]; then
        cp  ${saufwdir}/crnv21.bin  ${pushfwdir}
        chown bluetooth:bluetooth ${pushfwdir}/crnv21.bin
        chmod 0440 bluetooth:bluetooth ${pushfwdir}/crnv21.bin
    fi

    if [ -f ${saufwdir}/crbtfw21.ver ]; then
        cp  ${saufwdir}/crbtfw21.ver  ${pushfwdir}
        cp  ${saufwdir}/crbtfw21.ver  ${pushdatadir}
        chown bluetooth:bluetooth ${pushfwdir}/crbtfw21.ver
        chown bluetooth:bluetooth ${pushdatadir}/crbtfw21.ver
        chmod 0440 bluetooth:bluetooth ${pushfwdir}/crbtfw21.ver
        chmod 0440 bluetooth:bluetooth ${pushdatadir}/crbtfw21.ver
    fi
}

# delete all bt sau file
function btfirmwaredelete() {

    if [ -f ${saufwdir}/crbtfw21.tlv ]; then
        rm -rf  ${saufwdir}/crbtfw21.tlv
    fi

    if [ -f ${pushfwdir}/crbtfw21.tlv ]; then
        rm -rf  ${pushfwdir}/crbtfw21.tlv
    fi

    if [ -f ${saufwdir}/crnv21.bin ]; then
        rm -rf  ${saufwdir}/crnv21.bin
    fi

    if [ -f ${pushfwdir}/crnv21.bin ]; then
        rm -rf  ${pushfwdir}/crnv21.bin
    fi

    if [ -f ${saufwdir}/crbtfw21.ver ]; then
        rm -rf  ${saufwdir}/crbtfw21.ver
    fi

    if [ -f ${pushfwdir}/crbtfw21.ver ]; then
        rm -rf  ${pushfwdir}/crbtfw21.ver
    fi

    if [ -f ${pushdatadir}/crbtfw21.ver ]; then
        rm -rf  ${pushdatadir}/crbtfw21.ver
    fi
}

case "$config" in
    "btfirmwareupdate")
        btfirmwareupdate
    ;;

    "btfirmwaredelete")
        btfirmwaredelete
    ;;
esac
