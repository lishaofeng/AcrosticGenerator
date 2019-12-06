export CUDA_VISIBLE_DEVICES="0"
export Acrostic_HOME=$PWD
export Acrostic_Train="$Acrostic_HOME/custom_t2t"
t2t-trainer \
    --generate_data \
    --t2t_usr_dir=${Acrostic_Train}/script \
    --problem=lyrics \
    --data_dir=${Acrostic_Train}/english_data \
    --model=transformer \
    --hparams_set=transformer_base_single_gpu \
    --output_dir=$Acrostic_Train/english_train \
    --worker_gpu_memory_fraction=0.4 \
    --train_steps=1000000
