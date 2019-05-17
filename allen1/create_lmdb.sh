#!/usr/bin/env sh

# 二、转换为lmdb格式

set -e

MY=/home/allen/mycaffe/caffe/examples/allen1

echo "Creating train lmdb..."
sudo rm -rf $MY/img_train_lmdb
sudo ../../build/tools/convert_imageset --shuffle --resize_height=256 --resize_width=256 \
$MY/train/  $MY/train.txt  $MY/img_train_lmdb
echo "Done."

echo "Creating test lmdb.."
sudo rm -rf $MY/img_test_lmdb
sudo ../../build/tools/convert_imageset --shuffle --resize_width=256 --resize_height=256 \
$MY/test/  $MY/test.txt  $MY/img_test_lmdb
echo "All Done."
