#!/bin/bash

root_path=/media/nrosliu/T7/Replica
sequence_name=room2
base_path=${root_path}/${sequence_name}

# For NeuralRGBD dataset, set is_focal_file to True, and already_kitti_format_pose to False
# For Replica dataset,    set is_focal_file to False, and already_kitti_format_pose to True

command="python3 ./dataset/rgbd_to_kitti_format.py
        --output_root ${base_path}_kitti_format
        --depth_img_folder ${base_path}/depths/
        --rgb_img_folder ${base_path}/images/
        --intrinsic_file ${root_path}/cam_params.json
        --pose_file ${base_path}/traj.txt
        --is_focal_file False
        --already_kitti_format_pose True
        --vis_on False"

echo "Convert RGBD dataset to KITTI format"
eval $command
echo "Done."