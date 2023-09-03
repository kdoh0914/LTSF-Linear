model_name=DLinear
 
# audio_x2, univariate results, pred_len= 24 48 96 192 336 720
python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path audio_x2.csv \
  --model_id audio_x2_336_24 \
  --model $model_name \
  --data audio_x2 \
  --seq_len 336 \
  --pred_len 24 \
  --enc_in 1 \
  --des 'Exp' \
  --target 'waveform' \
  --itr 1 --train_epochs 100 --batch_size 128 --feature S --learning_rate 0.005 >logs/LongForecasting/$model_name'_'fS_audio_x2_336_24.log 

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path audio_x2.csv \
  --model_id audio_x2_336_48 \
  --model $model_name \
  --data audio_x2 \
  --seq_len 336 \
  --pred_len 48 \
  --enc_in 1 \
  --des 'Exp' \
  --target 'waveform' \
  --itr 1 --train_epochs 100 --batch_size 128 --feature S --learning_rate 0.005 >logs/LongForecasting/$model_name'_'fS_audio_x2_336_48.log

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path audio_x2.csv \
  --model_id audio_x2_336_96 \
  --model $model_name \
  --data audio_x2 \
  --seq_len 336 \
  --pred_len 96 \
  --enc_in 1 \
  --des 'Exp' \
  --target 'waveform' \
  --itr 1 --train_epochs 100 --batch_size 128 --feature S --learning_rate 0.005 >logs/LongForecasting/$model_name'_'fS_audio_x2_336_96.log

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path audio_x2.csv \
  --model_id audio_x2_336_192 \
  --model DLinear \
  --data audio_x2 \
  --seq_len 336 \
  --pred_len 192 \
  --enc_in 1 \
  --des 'Exp' \
  --target 'waveform' \
  --itr 1 --train_epochs 100 --batch_size 32 --feature S --learning_rate 0.005 >logs/LongForecasting/$model_name'_'fS_audio_x2_336_192.log

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path audio_x2.csv \
  --model_id audio_x2_336_336 \
  --model $model_name \
  --data audio_x2 \
  --seq_len 336 \
  --pred_len 336 \
  --enc_in 1 \
  --des 'Exp' \
  --target 'waveform' \
  --itr 1 --train_epochs 100 --batch_size 32 --feature S --learning_rate 0.005 >logs/LongForecasting/$model_name'_'fS_audio_x2_336_336.log


python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path audio_x2.csv \
  --model_id audio_x2_336_720 \
  --model $model_name \
  --data audio_x2 \
  --seq_len 336 \
  --pred_len 720 \
  --enc_in 1 \
  --des 'Exp' \
  --target 'waveform' \
  --itr 1 --train_epochs 100 --batch_size 32 --feature S --learning_rate 0.005 >logs/LongForecasting/$model_name'_'fS_audio_x2_336_720.log
