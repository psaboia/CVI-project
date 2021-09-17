# Computer Vision I - Project

All deliverables (codes, reports) for CVI Semester Project - Fall 2021

Priscila Moreira (pmoreira@nd.edu) and Mahsa Mitcheff (mmitchef@nd.edu)


_________________________________________________________________________

# Report 1: Data Acquisition

## Project: Medical Image Forgery  Detection


### Objective
To distinguish between authentic and fake medical images and identify where medical scans have been tampered. 


### Datasets and Data Acquisition
We used the CT-GAN dataset, which includes both authentic and manipulated CT images of lung cancer. Three qualified radiologists analyzed this dataset and were unable to consistently distinguish between actual and artificiale cancers, meaning that the fake cancers are realistic, and this detection task is very challenging. Author of CT-GAN also tried one of the available AI systems for lung cancer detection, but it couldn't tell the difference between false and actual nodules. [1]

### Dataset Description
The CT-GAN dataset consists of two sets of 80 scans and 20 scans[1]. The first 80 scans were used in a blind trial with the radiologists (they weren't told they were tampered). The second 20 scans were used in an open trial with the radiologists (they were told the truth and asked to identify them). In this dataset, there are two types of tampering: 1)removing a cancer and 2)injecting a cancer. There are 4 classes True-Benign (TB), True-Malicious (TM), False-Benign (FB), False-Malicious (FM). 
- True-Benign (TB): A location that has no cancer
- True-Malicious (TM): A location that has real cancer
- False-Benign (FB): A location that has real cancer, but it was removed.
- False-Malicious (FM): A location that does not have cancer, but fake cancer was injected there.

Provided with the scans there is a table with the ground truth. For each scan, where a cancer is located (x, y) and its classification. Table 1 provides detailed information about blind and open trials.


           Table 1. Data Specification of Blind and Open Trials 
-------------------------------------------------------------------------
| Dataset       |No. Scans | No. Annotated Scans | No. Manipulated Scans |
| ------------  | ---------| ------------------- | --------------------- |
| Blind Trial   |   1745   |        133                     95           |
| ------------  | -------- | ------------------- | --------------------- |
| Open trial    |   5296   |         36          |           18          | 
--------------- |--------------------------------------------------------|
|Total No. Scans|   7041   |        169          |           113         |
--------------------------------------------------------------------------


### Data Preparation
At first, we extracted relevant data from the zip file and each CT folders, then combined them into our dataset. We added previous and next DICOM pictures associated with each patient's CT slide to expand the size of our collection. Also, there were some similar CT images with different classes at the same location that we had to remove from our final dataset. Table 2 shows the details of our dataset after cleaning and adding more data.


**Data Transformation:** converting 16 bit int DICOM data into 8 bit data to be suitable for processing by using one of the deep learning techniques.

**Link to the code and Extracted Dataset**

https://drive.google.com/drive/folders/1ghaSfbgYYe3Parhx1omvSUqwJAOidRM9?usp=sharing

### Initial proposed solution

First, we will detect the nodules for then propose a model to classify whether a nodule is pristine or forged.


## References 

[1]https://www.kaggle.com/ymirsky/medical-deepfakes-lung-cancer
