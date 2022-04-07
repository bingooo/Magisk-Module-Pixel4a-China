#模块内容全部进magisk系统=0
#更多自定义=1
SKIPUNZIP=0

ui_print "- Removing Radio cache"
rm -r /data/vendor/radio && rm -r /data/vendor/modem_fdr
ui_print "- Set Permission"
set_perm_recursive $MODPATH/system/vendor/mbn 0 0 0755 0644 u:object_r:vendor_file:s0
set_perm_recursive $MODPATH 0 0 0755 0644 u:object_r:vendor_file:s0
ui_print "- Customize Done"