#!/bin/bash

# Run the Docker command
sudo docker run -it --rm --device=/dev/video0 --device=/dev/snd/controlC0 --device=/dev/snd/pcmC0D0c --network host ros2-aida

# Change directory to parent directory
cd ..

# Build the ROS2 workspace
colcon build

# Source the local setup script
source install/local_setup.bash

# Change directory to the launch directory
cd launch

echo"Now launching rpi5.yaml"

# Launch the ROS2 launch file
ros2 launch rpi5.yaml
