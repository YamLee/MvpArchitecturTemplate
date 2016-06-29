<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <application>
        <activity android:name="${activityPackageName}.${activityClass}"
                  android:launchMode="standard"
                  android:screenOrientation="portrait"
                  android:windowSoftInputMode="adjustResize|stateHidden">
        </activity>
    </application>
</manifest>
