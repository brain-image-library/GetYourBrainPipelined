#!/bin/bash
python3 /scripts/save_inputs.py
python3 /scripts/smoothITK.py r16.nii.gz 3.0 r16_smooth_itk.nii.gz
python3 /scripts/smoothSimpleITK.py r16.nii.gz 3.0 r16_smooth_sitk.nii.gz
python3 /scripts/smoothANTs.py r16.nii.gz 3.0 r16_smooth_ants.nii.gz
python3 /scripts/registrationANTs.py r16.nii.gz r64.nii.gz r16_warped.nii.gz