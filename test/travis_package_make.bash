#!/bin/bash -xve

#ワークスペースにリポジトリをコピー
rsync -av ./ ~/catkin_ws/src/pimouse_run_corridor/

#pimouse_rosをgit cloneでワークスペースにもってくる
cd ~/catkin_ws/src/
git clone --depth=1 https://github.com/citueda/pimouse_ros.git

cd ~/catkin_ws
catkin_make

