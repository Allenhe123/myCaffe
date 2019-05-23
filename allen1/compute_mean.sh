#!/usr/bin/env sh


# 三、计算均值并保存
# 图片减去均值再训练，会提高训练速度和精度。因此，一般都会有这个操作。 
# caffe程序提供了一个计算均值的文件compute_image_mean.cpp，我们直接使用就可以了

set -e

MY=/home/allen/mycaffe/caffe/examples/allen1

if [ -f "$MY/mean.binaryproto" ];then
    echo "rm -f $MY/mean.binaryproto"
    rm -f $MY/mean.binaryproto
fi

echo "compute mean value for train data"

sudo ../../build/tools/compute_image_mean $MY/img_train_lmdb $MY/mean.binaryproto

echo "Done"
