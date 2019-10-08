function model = ClassfyPictureTrain(trainpath,ext,svmtrainpath,n,kmeansfunc)
%%通过trainpath内图像与kmeansfunc方式进行模型构建，获得model并保存
%picturepath保存各个类别的图形的文件路径
%kmeansfunc进行kmeans分类方式
%%实现过程
%生成svmtrain文件数据
[trlabel,trdata]=creatsvmfrompath(trainpath,ext,svmtrainpath,n,kmeansfunc);
%读取svmtrain数据
%!python grid.py svmpath
%得到c g 
%0.03125 0.0078125 25.0 
%预测模型
model=svmtrain(trdata,trlabel);
end



