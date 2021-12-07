EVAL_DIR=/scratch365/pmoreira/lunotim_ssd/experiment1/evaluation/val/
CHECKPOINT_PATH=/scratch365/pmoreira/lunotim_ssd/experiment1/checkpoints/
DATASET_DIR=/scratch365/pmoreira/datasets/lunotim/experiment1/val/tfrecords/
python3.6m eval_ssd_network.py \
    --eval_dir=${EVAL_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=lunotim \
    --dataset_split_name=val \
    --model_name=ssd_300_vgg \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --wait_for_checkpoints=FALSE \
    --batch_size=32 \
    --nms_threshold=0.01 \
    --num_classes=2 \
    --gpu_memory_fraction=0.9 \
    #--max_num_batches=500
