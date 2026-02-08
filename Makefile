

.PHONY: test clean build

test:
	cd ../../
	colcon test --packages-select argus_inference
	colcon test-result --verbose

clean: 
	rm -rf build/ install/ log/

build:
	colcon build --packages-select argus_sensors
