# python submitit_pretrain.py \
#     --job_dir jottest \
#     --nodes 1 \
#     --use_volta32 \
#     --batch_size 16 \
#     --accum_iter 128\
#     --model mae_vit_base_patch16 \
#     --norm_pix_loss \
#     --mask_ratio 0.75 \
#     --epochs 200 \
#     --warmup_epochs 40 \
#     --blr 1.5e-4 --weight_decay 0.05 \
#     --data_path /data/imagenet

python -m torch.distributed.launch --nproc_per_node=1 --use_env main_pretrain.py \
    --batch_size 32 \
    --accum_iter 128\
    --model mae_vit_base_patch16 \
    --norm_pix_loss \
    --mask_ratio 0.75 \
    --epochs 200 \
    --warmup_epochs 40 \
    --blr 1.5e-4 --weight_decay 0.05 \
    --data_path /data/imagenet