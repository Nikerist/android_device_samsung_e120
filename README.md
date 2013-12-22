## Build Instructions for E120L

### Prepare Build environment under OSX

At first you should prepare a volume with Case-sensitive Journaled HFS+ file system with a volume name “android”.

```
ruby <(curl -fsSk https://raw.github.com/mxcl/homebrew/go)
touch ~/.bash_profile && echo "PATH=/usr/local/bin:/usr/local/sbin:$PATH:/usr/local/android-sdk/tools:/usr/local/android-sdk/platform-tools" >> ~/.bash_profile
```

also you should add this line to the .bash_profile file:
```
export BUILD_MAC_SDK_EXPERIMENTAL=1
```
```
brew update
brew install git coreutils findutils gnu-sed gnupg pngcrush repo
```

You can find many articles regarding linux so please google.


### Follow the usual instructions to download sources for CM11, e.g.
```
1) mkdir /Volumes/android/cm-11.0
2) cd /Volumes/android/cm-11.0
3) repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0
```

### Include the file .repo/local_manifest/local_manifest.xml to allow these additional repositories to be synced:
```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
<project name="CyanogenMod/android_device_samsung_msm8660-common" path="device/samsung/msm8660-common" remote="github" revision="cm-11.0" />
<project name="CyanogenMod/android_device_samsung_celox-common" path="device/samsung/celox-common" remote="github" revision="cm-11.0" />
<project name="CyanogenMod/android_device_samsung_qcom-common" path="device/samsung/qcom-common" remote="github" revision="cm-11.0" />
<project name="CyanogenMod/android_hardware_samsung" path="hardware/samsung" remote="github" revision="cm-11.0" />
<project name="TheMuppets/proprietary_vendor_samsung.git" path="vendor/samsung" remote="github" revision="cm-11.0" />
<project name="Socim/android_device_samsung_e120" path="device/samsung/e120l" revision=“cm-11.0-e120l" />
</manifest>
```


### Download or update all repositories:
```
repo sync -j16   
```



### Get all the prebuilts:
```
vendor/cm/get-prebuilts
```

### Ready to build!
```
source build/envsetup.sh
brunch cm_e120l-eng
```
