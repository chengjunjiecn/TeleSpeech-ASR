. ./path.sh || exit 1

data=/kaggle/input/shanghaipinyin
model=/kaggle/working/checkpoint/checkpoint_best.pt
result_path=/kaggle/working/data/decode_result
python infer.py \
    --config-dir config \
    --config-name infer \
    task=spec_finetuning \
    task.data=${data} \
    task.normalize=false \
    common.user_dir=/kaggle/working/TeleSpeech-ASR/data2vec_dialect \
    common_eval.path=${model} \
    common_eval.results_path=${result_path} \
    common_eval.quiet=false \
    dataset.gen_subset=test
  
