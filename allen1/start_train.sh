#!/usr/bin/env sh

set -e

MY=/home/allen/mycaffe/caffe/examples/allen1

prefix=$MY/allen_caffenet_train

if [ ! -d $prefix/ ];then
    echo "mkdir:"
    sudo mkdir $prefix
else
    echo "dir: $prefix already exist"
fi

echo "start to train..."
sudo ../../build/tools/caffe train -solver $MY/solver.prototxt

echo "train end"