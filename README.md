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
The dataset consists of two sets (80 scans and 20 scans). This dataset has two type of tampering including: 1)removing a cancer and 2)injecting a cancer

| File Type | Method of Tampering | Total | Pristine | Tampered |
| --------- | ------------------- | ----- | -------- | -------- |
| DICOM     | CT-GAN algorithm    | 308 We can add more authentic data | 195 | 113 |


*Labels:* There are 4 classes True-Benign (TB), True-Malicious (TM), False-Benign (FB), False-Malicious (FM). Provided with the scans is a table with the ground truth. For each scan, where a cancer is located (x, y, and z [slice#]) and its classification. A location can be classified as being:
- True-Benign (TB): A location that has no cancer
- True-Malicious (TM): A location that has real cancer
- False-Benign (FB): A location that has real cancer, but it was removed.
- False-Malicious (FM): A location that does not have cancer, but fake cancer was injected there.

Since we are going to consider tampered and untampered data, we combine all classes that are tampered together and all untampered classes together. In general, we will have two classes.

### Data Preparation and Preprocessing

Extract related data from zip file and from each CT and put them into our dataset.

**Data Transformation:** converting 16 bit int DICOM data into 8 bit data to be suitable for processing by using one of the deep learning techniques.

**Link to the code and Extracted Dataset**

https://drive.google.com/drive/folders/1ghaSfbgYYe3Parhx1omvSUqwJAOidRM9?usp=sharing

### Initial proposed solution

First, we will detect the nodules for then propose a model to classify whether a nodule is pristine or forged.


## References 

[1]https://www.kaggle.com/ymirsky/medical-deepfakes-lung-cancer
