#!/bin/bash
THEANO_FLAGS="floatX=float32,optimizer_excluding=scanOp_pushout_output" python ../semi_models/run.py -bidirectional -worddrop 0.4 -lang turkish -kl_thres 0.2 -start_val 15000 -epochs 120 -add_uns 0.0
