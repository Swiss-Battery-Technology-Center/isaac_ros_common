#!/bin/bash
rosdep update && rosdep install --from-paths /workspaces/cumotion/isaac_ros_cumotion --ignore-src -y
rosdep update && \
   rosdep install -i -r \
   --from-paths /workspaces/cumotion/isaac_manipulator/isaac_manipulator_bringup/ \
   --rosdistro humble -y
sudo apt update
sudo apt-get install -y curl jq tar
rosdep update && rosdep install -i -r --from-paths /workspaces/cumotion/isaac_ros_nvblox/ --rosdistro humble -y
colcon build --cmake-args -DBUILD_TESTING=OFF


