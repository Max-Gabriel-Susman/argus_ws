# Argus Workspace

This repository contains the workspace directory for the environment I develop Argus in. Currently have all the build artifacts and package directories gitignored as the intention is for this repo to capture the documentation and tools I'm using at the workspace level. The packages may be cloned separately into a a src sub directory you'll create for this workspace.

## Usage

Run bringup with the dataset path in the environment:
```
ARGUS_DATASET_PATH=$HOME/Documents/datasets/indy_loco/indy_20161005_06.mat \
  ros2 launch argus_bringup poc_inference_effectors.launch.py
```
