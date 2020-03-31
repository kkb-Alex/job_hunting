python3 ../main.py \
--mode=train \
--data_files ../scripts/data/train.json \
--eval_files=../scripts/data/validation.json \
--label_file=../scripts/data/labels.txt \
--vocab_file=../scripts/data/vocab.txt \
--embed_file=../scripts/data/embedding.txt \
--num_layers=2 \
--batch_size=32 \
--encoder=elmo \
--rnn_cell_name=lstm \
--feature_num=20 \
--steps_per_eval=2000 \
--learning_rate=0.001 \
--focal_loss=0.0 \
--checkpoint_dir=../scripts/data/elmo_ema_0120