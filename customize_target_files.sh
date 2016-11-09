#!/bin/bash
PWD=`pwd`
METADATA_DIR=$PWD/metadata
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/target_files
build_prop_file=$TARGET_FILES_DIR/SYSTEM/build.prop
OTHER_DIR=$PWD/other

if [ -e $METADATA_DIR/updater ]
then
   echo "Use custom updater bin file"
   cp $METADATA_DIR/updater $TARGET_FILES_DIR/OTA/bin
fi

cp -rf other/file_contexts out/target_files/META/

cd $PWD

echo "Copy GuardProvider"
cd ..
cp -r miui/system/app/XXHDPI/GuardProvider/GuardProvider.apk $OUT_DIR/target_files/SYSTEM/app/GuardProvider/GuardProvider.apk
#cp -rf other/ssServices $OUT_DIR/target_files/SYSTEM/bin/ssServices
#cp -rf other/namespaceInit $OUT_DIR/target_files/SYSTEM/bin/namespaceInit

