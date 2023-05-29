platform=$1 # 操作系统名称: win32 或 linux 或 darwin
if [ $2 ]
then
   arch=$2 # 系统构架: x64 或 ia32 或 arm64 或 armv7l
else
   arch=x64
fi

ignore_platform=$(node -e "console.log(['linux','darwin','win32'].filter(x=>x!='${platform}').join('|'))")
ignore_arch=$(node -e "console.log(['x64','ia32','arm64','armv7l'].filter(x=>x!='${arch}').join('|'))")

electron-packager . AriaNgElectron --app-copyright="Copyright (c) 2018-2023 Xpsoted" \
    --platform=${platform} --arch=${arch} --electron-version 7.1.1 \
    --out ../OutApp/ --overwrite \
    --icon=./assets/AriaNg.ico --ignore=packager.sh --ignore="aria2\/(${ignore_platform})" --ignore="aria2\/${platform}/(${ignore_arch})" --ignore="^\/node_modules" \
    --tmpdir=../OutApp/Temp/ --download.cache=../OutApp/Temp/

cd ../OutApp/AriaNgElectron-${platform}-${arch}
rm LICENSE LICENSES.chromium.html version
cp ../../README.md ./
cp ../../LICENSE ./

cd ../ # 在OutApp文件夹
cd "AriaNgElectron-${platform}-${arch}"

if [ ${platform} = "darwin" ]
then
    rm -rf Electron.dSYM
    electron-installer-zip AriaNgElectron.app ../../dist/AriaNgElectron-${platform}-${arch}.zip
elif [ ${platform} = "linux" ]
then
    electron-installer-zip AriaNgElectron-${platform}-${arch} ../../dist/AriaNgElectron-${platform}-${arch}.zip
else
    electron-installer-zip . ../../dist/AriaNgElectron-${platform}-${arch}.zip
fi

# rm -rf AriaNgElectron-${platform}-${arch}

# rm ../dist/AriaNgElectron-${platform}-${arch}.zip
