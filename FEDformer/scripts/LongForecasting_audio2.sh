# cd FEDformer
if [ ! -d "../logs" ]; then
    mkdir ../logs
fi

if [ ! -d "../logs/LongForecasting" ]; then
    mkdir ../logs/LongForecasting
fi

for preLen in 96 192 336 720
do

python -u run.py \
  --is_training 1 \
  --data_path audio_x2.csv \
  --task_id audio_x2_96_48 \
  --model FEDformer \
  --data audio_x2 \
  --features S \
  --seq_len 96 \
  --label_len 48 \
  --pred_len $preLen \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --d_model 512 \
  --itr 1 >../logs/LongForecasting/FEDformer_audio_x2_$pred_len.log
done
