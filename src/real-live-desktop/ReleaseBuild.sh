#!/usr/bin/env bash

# 设置 pyinstaller 路径，需要根据自己的环境来更改
pyinstaller_path="/Users/parzulpan/Personal/PythonVenv/3.6/bin/pyinstaller"

# 删除打包生成的文件夹
rm -rf ./build ./dist
rm -rf ./release

# 执行打包
$pyinstaller_path real_live.spec --clean -y

# 将打包文件移动到 release 文件夹
mkdir ./release

mv -f ./dist/real_live ./release
chmod +x StartRealLive.sh
cp StartRealLive.sh ./release/real_live
cp -rf resources ./release/real_live
mv -f ./release/real_live/resources/pyqt5_material ./release/real_live
rm -rf ./build ./dist