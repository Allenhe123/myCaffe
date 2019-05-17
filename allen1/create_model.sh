#!/usr/bin/env sh

# 四、创建模型并编写配置文件

set -e

MY=/home/allen/mycaffe/caffe/examples/allen1

echo "copy caffenet model files to current dir"

sudo cp ../../models/bvlc_reference_caffenet/solver.prototxt $MY
sudo cp ../../models/bvlc_reference_caffenet/train_val.prototxt $MY

echo "Done"