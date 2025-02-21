GPU=$1

python inference/llava1.5.py \
    --model llava-hf/llava-1.5-7b-hf \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/clean \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
    --corruption ''

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/biterror \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
    --corruption 'BitError'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/cameracrash \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
    --corruption 'CameraCrash'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/fog \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
    --corruption 'Fog'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/h256 \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
    --corruption 'H256ABRCompression'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/lowlight \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
   --corruption 'LowLight'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/rain \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
   --corruption 'Rain'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/snow \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
   --corruption 'Snow'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/bright \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
   --corruption 'Brightness'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/colorquant \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
   --corruption 'ColorQuant'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/framelost \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
   --corruption 'FrameLost'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/lens \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
   --corruption 'LensObstacleCorruption'
   
python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/motion \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
   --corruption 'MotionBlur'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/saturate \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
   --corruption 'Saturate'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/zoom \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
   --corruption 'ZoomBlur'

python inference/llava1.5.py \
    --model 'llava-hf/llava-1.5-7b-hf' \
    --data data/drivebench-test-final.json \
    --output res/llava-1.5-7b/water \
    --system_prompt prompt.txt \
    --num_processes ${GPU} \
    --max_model_len 4096 \
   --corruption 'WaterSplashCorruption'