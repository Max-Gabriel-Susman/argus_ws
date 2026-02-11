

.PHONY: run_poc test_inference clean build

run_poc:
	bash -lc 'source /opt/ros/humble/setup.bash && \
		colcon build --symlink-install && \
		source install/setup.bash && \
		ros2 launch argus_bringup poc_inference_effectors.launch.py'

test_inference:
	colcon test --packages-select argus_inference
	colcon test-result --verbose

test_effectors:
	colcon test --packages-select argus_effectors
	colcon test-result --verbose

build_effectors:
	colcon build --packages-select argus_effectors

format_effectors:
	ament_uncrustify --reformat src/argus_effectors/src/effectors_node.cpp

clean: 
	rm -rf build/ install/ log/

build_sensors:
	colcon build --packages-select argus_sensors
