# add --individual for DLinear-I
if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/LongForecasting" ]; then
    mkdir ./logs/LongForecasting
fi
seq_len=48

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path dongguan.csv \
  --model_id Electricity_$seq_len'_'6 \
  --model DLinear \
  --data eload \
  --features S \
  --seq_len $seq_len \
  --pred_len 24 \
  --enc_in 321 \
  --des 'Exp' \
  --itr 1 \
  --batch_size 16 \
  --learning_rate 0.001 \
  2>&1 | tee ./logs/LongForecasting/DLinear_eload_$seq_len'_'6.log 

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path dongguan.csv \
  --model_id Electricity_$seq_len'_'12 \
  --model DLinear \
  --data eload \
  --features S \
  --seq_len $seq_len \
  --pred_len 12 \
  --enc_in 321 \
  --des 'Exp' \
  --itr 1 \
  --batch_size 16 \
  --learning_rate 0.001 \
  2>&1 | tee ./logs/LongForecasting/DLinear_eload_$seq_len'_'12.log  

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path dongguan.csv \
  --model_id Electricity_$seq_len'_'24 \
  --model DLinear \
  --data eload \
  --features S \
  --seq_len $seq_len \
  --pred_len 24 \
  --enc_in 321 \
  --des 'Exp' \
  --itr 1 \
  --batch_size 16 \
  --learning_rate 0.001 \
  2>&1 | tee ./logs/LongForecasting/DLinear_eload_$seq_len'_'24.log  

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path dongguan.csv \
  --model_id Electricity_$seq_len'_'48 \
  --model DLinear \
  --data eload \
  --features S \
  --seq_len $seq_len \
  --pred_len 48 \
  --enc_in 321 \
  --des 'Exp' \
  --itr 1 \
  --batch_size 16 \
  --learning_rate 0.001 \
  2>&1 | tee ./logs/LongForecasting/DLinear_eload_$seq_len'_'48.log  
