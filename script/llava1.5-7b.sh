python inference/llava1.5.py \
    --model llava-hf/llava-1.5-7b-hf \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/clean \
    --system_prompt prompt.txt \
    --num_processes 1 \
    --max_model_len 4096 \
    --corruption ''

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/biterror \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
    --corruption 'BitError'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/cameracrash \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
    --corruption 'CameraCrash'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/fog \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
    --corruption 'Fog'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/h256 \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
    --corruption 'H256ABRCompression'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/lowlight \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
   --corruption 'LowLight'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/rain \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
   --corruption 'Rain'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/snow \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
   --corruption 'Snow'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/bright \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
   --corruption 'Brightness'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/colorquant \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
   --corruption 'ColorQuant'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/framelost \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
   --corruption 'FrameLost'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/lens \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
   --corruption 'LensObstacleCorruption'
   
python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/motion \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
   --corruption 'MotionBlur'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/saturate \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
   --corruption 'Saturate'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/zoom \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
   --corruption 'ZoomBlur'

python llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/test/test_gpt_drivelm_train_300_final_v2_norm.json \
    --output res/llava-1.5-7b/water \
    --system_prompt prompt.txt \
    --num_processes 8 \
    --max_model_len 4096 \
   --corruption 'WaterSplashCorruption'