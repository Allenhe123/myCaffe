#!/usr/bin/python

# 一、准备数据

import os

def walkdir(dirpath, outfilename):
    if os.path.exists(outfilename):
        os.remove(outfilename)
    outputfile = open(outfilename, 'w')
    filelist = os.listdir(dirpath)
    for filename in filelist:
        ret = filename.split(".")
        num = int(ret[0][0])
        num -= 3
        # 将3,4,5,6,7转化为01234
        line = filename + " " + str(num) + "\n"
        outputfile.write(line)
        # print(line)
    outputfile.close()
    print("filename:", outfilename, "   filenum:", len(filelist))


walkdir("train", "train.txt")
walkdir("test", "test.txt")


