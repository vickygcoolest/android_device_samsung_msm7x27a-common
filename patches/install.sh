echo "I: Obtaining build directory..."
rootdirectory="$PWD"
cd $rootdirectory
cd bionic
echo "I: Applying bionic patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/android_bionic/*.patch
cd $rootdirectory
cd build
echo "I: Applying build patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/android_build/*.patch
cd $rootdirectory
cd frameworks/base
echo "I: Applying frameworks base patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/frameworks_base/*.patch
cd $rootdirectory
cd frameworks/native
echo "I: Applying frameworks native patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/frameworks_native/*.patch
cd $rootdirectory
cd frameworks/av
echo "I: Applying frameworks av patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/frameworks_av/*.patch
cd $rootdirectory
