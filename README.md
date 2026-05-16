# AE598_FinalProject_Sid
The bulk of this code is the [CrazyS](https://github.com/gsilano/CrazyS), ROS based Crazyflie 2.1 Simulator. Follow the link to the CrazyS repository to setup ROS and your catkin workspace. The only changes to this simulation code are:
* scripts folder: 
  ```bash
  cd AE598_FinalProject_Sid/src/CrazyS/rotors_control/scripts
  ```

  * backflip_trajectory.py: Generates flip trajectory
  * geometric_controller.py: Geometric tracking controller code
  * gtc_position_controller_node.py: Runs the trajectory generation and controller, and communicates with the simulator via ROS
  * parseData.ipynb: Used for parsing and plotting flight data
  * Data (directory): Contains json file with flight data as well as some flight videos
* launch file: crazyflie2_hovering_example.launch
  
  ```bash 
  cd AE598_FinalProject_Sid/src/CrazyS/rotors_gazebo/launch
  ```
	
Once the catkin workspace is setup, you can run the simulation like so:
```bash
roslaunch rotors_gazebo crazyflie2_hovering_example.launch
```
The drone will hover to \[0,0,1], pause for a while, and then perform the flip. Once your finished, navigate to the terminal that ran the simulation, and press Ctrl+C followed by Ctrl + \\. Finally, run this command to kill all services that didn't end properly:
```bash
killall -9 gzserver gzclient roscore rosmaster
```

