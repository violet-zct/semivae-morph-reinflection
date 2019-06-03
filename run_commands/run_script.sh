#!/bin/bash

export THEANO_FLAGS="floatX=float32,optimizer_excluding=scanOp_pushout_output"

srun --gres=gpu:1 -t 25:00:00 python ../semi_models/run.py -worddrop 0.4 -lang arabic -bidirectional -kl_thres 0.2 -start_val 15000 -epochs 120 -add_uns 0.0

