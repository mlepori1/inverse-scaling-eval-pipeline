SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source $SCRIPT_DIR/../.venv/bin/activate

EXP_DIR=QA-v1-opt
python $SCRIPT_DIR/../eval_pipeline/main.py \
    --dataset QA_bias-v1 \
    --task-type logodds \
    --exp-dir $EXP_DIR \
    --models opt-125m opt-350m \
    --use-gpu \
&& \
python $SCRIPT_DIR/../eval_pipeline/plot_loss.py \
    --task-type logodds \
    $EXP_DIR


