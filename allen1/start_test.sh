#!/usr/bin/env sh

set -e

MY=/home/allen/mycaffe/caffe/examples/allen1

echo "start to test..."
echo "param number: $#"
if [ $# < 1 ] 
then
    echo ".caffemodel file must be given"
    return 0
fi

# 测试的样本数目=batch_size * iterations， batch_size在model prototxt中指定(batch_size=50，迭代2次正好覆盖100个测试样本)。
sudo ../../build/tools/caffe test -model $MY/train_val.prototxt -weights $MY/$1 -iterations 100

# 用deploy.prototxt   deploy.prototxt没有指定batchsize，所以只能分类单张图片？
#sudo ../../build/tools/caffe test -model $MY/deploy.prototxt -weights $MY/$1 -iterations 100

echo "test end"
