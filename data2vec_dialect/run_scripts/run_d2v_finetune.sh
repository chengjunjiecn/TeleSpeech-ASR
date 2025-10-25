. ./path.sh || exit 1

pretrained_model=/kaggle/working/base.pt
python /kaggle/working/fairseq/fairseq_cli/hydra_train.py -m --config-dir config/v2_dialect_asr \
    --config-name base_audio_finetune_10h \
    common.user_dir=/kaggle/working/TeleSpeech-ASR/data2vec_dialect \
    model.w2v_path=${pretrained_model} \
    task.data=/kaggle/input/shanghaipinyin
