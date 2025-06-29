# start from a clean base image (replace <version> with the desired release)
FROM gcr.io/dall-e-67baf/worker-comfyui:e0bb961b44beb32b62c603c548b538ddd1950b8a

COPY extra_model_paths.yaml /comfyui/extra_model_paths.yaml
# install custom nodes using comfy-cli
# RUN comfy-node-install comfyui-kjnodes comfyui-ic-light comfyui_ipadapter_plus comfyui_essentials

# download models using comfy-cli
# the "--filename" is what you use in your ComfyUI workflow
# RUN comfy model download --url https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors --relative-path models/text_encoders --filename umt5_xxl_fp8_e4m3fn_scaled.safetensors
# RUN comfy model download --url https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors --relative-path models/vae --filename wan_2.1_vae.safetensors
# RUN comfy model download --url https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/diffusion_models/wan2.1_i2v_480p_14B_fp8_e4m3fn.safetensors --relative-path models/diffusion_models --filename wan2.1_i2v_480p_14B_fp8_e4m3fn.safetensors
# RUN comfy model download --url https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/clip_vision/clip_vision_h.safetensors --relative-path models/clip_vision --filename clip_vision_h.safetensors

# Copy local static input files into the ComfyUI input directory (delete if not needed)
# Assumes you have an 'input' folder next to your Dockerfile
COPY input/ /comfyui/input/
