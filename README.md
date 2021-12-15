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
**Note: only on GPU**
```
conda create -n py368-tf115 python==3.6.8 tensorflow-gpu==1.15.0 cudatoolkit=10.0 
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

**5. Install jupyter notebbok to run the script**
```
conda install jupyter
```

## Download our repo and demo folder inside of CVI-project
```
cd CVI-project
wget http://www.crc.nd.edu/~pmoreira/CVI-project/demo.zip
unzip demo.zip
```

**Inside the demo folder you shoul see** 
 
 - `ckeckpoints/`           - folder with graph and weights of the proposed model
 - `test_sample`            - foler with some images from our test set (unseen data during the trainig)
 - `test_solution.ipynb`    - the jupyter notebook for testing the trained model


## Run the code using jupyter notebook

Inside the folder `./demo`, run the script `test_solution.ipynb`.

```
jupyter notebook ./demo/test_solution.ipynb
```


## Original Source

[SSD-Tensorflow - https://github.com/balancap/SSD-Tensorflow](https://github.com/balancap/SSD-Tensorflow)  


