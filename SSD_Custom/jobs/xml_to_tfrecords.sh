# run this code inside the conda enviroment py368-tf115-cuda10

source activate py368-tf115-cuda10
cd ../
python3.6m tf_convert_data.py \
    --dataset_name=<name of your dataset> \
    --dataset_dir=<folder with the xmls> \
    --output_dir=<folder with tfrecords> \
    --samples_per_files=1

