#!/bin/bash

cat system/system/priv-app/Browser/Browser.apk.* 2>/dev/null >> system/system/priv-app/Browser/Browser.apk
rm -f system/system/priv-app/Browser/Browser.apk.* 2>/dev/null
cat system/system/priv-app/Settings/Settings.apk.* 2>/dev/null >> system/system/priv-app/Settings/Settings.apk
rm -f system/system/priv-app/Settings/Settings.apk.* 2>/dev/null
cat system/system/priv-app/SystemUI/SystemUI.apk.* 2>/dev/null >> system/system/priv-app/SystemUI/SystemUI.apk
rm -f system/system/priv-app/SystemUI/SystemUI.apk.* 2>/dev/null
cat system/system/priv-app/OppoGallery2/OppoGallery2.apk.* 2>/dev/null >> system/system/priv-app/OppoGallery2/OppoGallery2.apk
rm -f system/system/priv-app/OppoGallery2/OppoGallery2.apk.* 2>/dev/null
cat system/system/product/priv-app/Velvet/Velvet.apk.* 2>/dev/null >> system/system/product/priv-app/Velvet/Velvet.apk
rm -f system/system/product/priv-app/Velvet/Velvet.apk.* 2>/dev/null
cat system/system/product/priv-app/GmsCore/GmsCore.apk.* 2>/dev/null >> system/system/product/priv-app/GmsCore/GmsCore.apk
rm -f system/system/product/priv-app/GmsCore/GmsCore.apk.* 2>/dev/null
cat system/system/product/app/WebViewGoogle/WebViewGoogle.apk.* 2>/dev/null >> system/system/product/app/WebViewGoogle/WebViewGoogle.apk
rm -f system/system/product/app/WebViewGoogle/WebViewGoogle.apk.* 2>/dev/null
cat system/system/product/app/YouTube/YouTube.apk.* 2>/dev/null >> system/system/product/app/YouTube/YouTube.apk
rm -f system/system/product/app/YouTube/YouTube.apk.* 2>/dev/null
