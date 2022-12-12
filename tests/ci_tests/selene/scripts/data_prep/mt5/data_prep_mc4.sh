HYDRA_FULL_ERROR=1 BIGNLP_CI=1 python3 main.py \
    data_preparation=mt5/download_mc4 \
    stages=["data_preparation"] \
    bignlp_path=${GIT_CLONE_PATH} \
    data_dir=${RESULTS_DIR}/data \
    base_results_dir=${BASE_RESULTS_DIR} \
    "container='${BUILD_IMAGE_NAME_SRUN}'" \
    cluster.partition=${SLURM_PARTITION} \
    cluster.account=${SLURM_ACCOUNT} \
    cluster.gpus_per_task=null \
    cluster.gpus_per_node=null \
    cluster.job_name_prefix="${SLURM_ACCOUNT}-bignlp_ci:" \
    data_preparation.languages=mt \
    data_preparation.rm_downloaded=True \
    data_preparation.run.results_dir=${RESULTS_DIR} \
    data_preparation.run.node_array_size=1 \
    data_preparation.run.time_limit="4:00:00"
