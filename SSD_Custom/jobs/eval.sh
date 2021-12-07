source activate py368-tf115-cuda10

# EVAL_DIR is the place to save the output of the evaluation (tf.events)
EVAL_DIR=/scratch365/pmoreira/lunotim_ssd/experiment1/evaluation/test/

# checkpoint folder 
CHECKPOINT_PATH=/scratch365/pmoreira/lunotim_ssd/experiment1/checkpoints/

# tfrecord folder
DATASET_DIR=/scratch365/pmoreira/datasets/lunotim/experiment1/test/tfrecords/

cd ../

python3.6m eval_ssd_network.py \
    --eval_dir=${EVAL_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=lunotim \
    --dataset_split_name=val \
    --model_name=ssd_300_vgg \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --wait_for_checkpoints=FALSE \
    --num_classes=2 \
    --nms_threshold=0.01 \
    --batch_size=1 \
    --gpu_memory_fraction=0.9 \
    #--max_num_batches=500
