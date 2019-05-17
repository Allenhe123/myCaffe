#!/usr/bin/env sh

set -e

MY=/home/allen/mycaffe/caffe/examples/allen1

echo "start to test..."

# 测试的样本数目=batch_size * iterations， batch_size在model prototxt中指定(batch_size=50，迭代2次正好覆盖100个测试样本)。
sudo ../../build/tools/caffe test -model $MY/train_val.prototxt -weights $MY/*.caffemodel -iterations 2 

echo "test end"