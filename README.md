# Computer Vision Project: Medical Image Forgery  Detection

All deliverables (codes, reports) for CVI Semester Project - Fall 2021

Priscila Moreira (pmoreira@nd.edu) and Mahsa Mitcheff (mmitchef@nd.edu)

# Deliverables 
### [Report 1](report_1.md)
### [Report 2](report_2.md)

### [Final Report](CVI_final_report.pdf)
### [Final Presentation](CV_presentation_final.pdf) 
### [Short video on SSD performance](forgery_detection_in_medical_images.mp4) 



<a name="intructions-testSSD"></a>
# Instructions to run our trained SSD model on test set images

## Set the envirement

**1. Create a conda environment using the following command:**
*** Using GPU***
```
conda create -n py368-tf115 python==3.6.8 tensorflow-gpu==1.15.0 cudatoolkit=10.0 
```
*** Using CPU***
```
conda create -n py368-tf115 python==3.6.8 tensorflow==1.15.0  
```

**2. Activate the created envirement**

***Using conda 4.4:***
```
conda activate py368-tf115
```

***or using conda versions older than 4.4:***
```
source activate py368-tf115
```

**3. Install opencv**
```
conda install opencv
```
**4. Install matplotlib==3.3.2**
```
pip3 install matplotlib==3.3.2
```

## Clone the repo
```
git clone https://github.com/psaboia/CVI-project.git
``
## Run the code using jupyter notebook
Inside the folder `./demo`, run the script `test_solution.ipynb`.
```
jupyter notebook ./demo/test_solution.ipynb
```

