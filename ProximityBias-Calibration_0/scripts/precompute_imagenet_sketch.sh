for MODEL in  'vit_large_patch14_clip_336' # 'vit_large_patch14_clip_224.openai_ft_in1k'
do
python pytorch-image-models/precompute_intermediate_results_latest_version.py \
    --data_dir "/media/ai/Ubuntu 20.0/imageNet/imagenet1k" \
    --dataset "imagenet_sketch" \
    --model $MODEL \
    --output_dir "intermediate_output/imagenet_sketch" \
    --split "sketch" 
done