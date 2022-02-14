#!/bin/bash

cat system/system/product/app/LatinIME/LatinIME.apk.* 2>/dev/null >> system/system/product/app/LatinIME/LatinIME.apk
rm -f system/system/product/app/LatinIME/LatinIME.apk.* 2>/dev/null
cat system/system/product/app/webview/webview.apk.* 2>/dev/null >> system/system/product/app/webview/webview.apk
rm -f system/system/product/app/webview/webview.apk.* 2>/dev/null
cat system/system/system_ext/priv-app/Settings/Settings.apk.* 2>/dev/null >> system/system/system_ext/priv-app/Settings/Settings.apk
rm -f system/system/system_ext/priv-app/Settings/Settings.apk.* 2>/dev/null
