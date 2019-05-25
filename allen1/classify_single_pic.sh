#!/usr/bin/env sh

set -e

MY=/home/allen/mycaffe/caffe/examples/allen1
BIN=/home/allen/mycaffe/caffe/build/examples/cpp_classification/classification.bin

echo "start to classify"
echo "param num: $#"
if [ $# < 2 ]
then
    echo "the *.caffemodel file must be given"
    return 0
fi

echo "sudo ../../build/examples/cpp_classification/classification.bin $MY/deploy.prototxt $MY/$1 $MY/mean.binaryproto $MY/label.txt $MY/$2"
sudo ../../build/examples/cpp_classification/classification.bin $MY/deploy.prototxt $MY/$1 $MY/mean.binaryproto $MY/label.txt $MY/$2
