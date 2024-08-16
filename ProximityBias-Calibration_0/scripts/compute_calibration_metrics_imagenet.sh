#for MODEL in 'vit_base_patch16_224' 'beit_large_patch16_224' 'mixer_b16_224' 'resnet50'
start_start=$(date +%s) # 记录循环开始时的时间戳
for MODEL in 'beit_large_patch16_384' 'resnet50'
#for MODEL in 'resnet50'
do

for SEED in 2020 2021 2022 2023 2024
#for SEED in 2020
do
start=$(date +%s) # 记录循环开始时的时间戳
python compute_calibration_metrics.py  \
    --model $MODEL \
    --distance_measure L2 \
    --data_dir "intermediate_output/imagenet/" \
    --random_seed $SEED  \
    --num_neighbors 10  
end=$(date +%s) # 记录循环结束时的时间戳
echo "Loop $SEED took $((end - start)) seconds" # 计算并打印循环时间
done
done
end_end=$(date +%s) # 记录循环结束时的时间戳
echo " took $((end_end - start_start)) seconds" # 计算并打印循环时间
2>/dev/null