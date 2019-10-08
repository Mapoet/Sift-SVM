function [palliden,palldes]=creatsvmfrompath(srcpaths,ext,savepath,n,kmeansfunc)
%%由路径创建图片的svmdata的数据文件
%srcpath保存各个类别的图形的文件路径
%savepath保存svmdata的文件路径
%kmeansfunc进行kmeans分类方式
%%
%获得分类数
pclassnum=size(srcpaths,2);
palliden=[];
palldes=[];
%进行各分类赋值
for i=1:pclassnum
    %获得一路径下所有文件特征
    [idens,des]=getpathpicdes(srcpaths{1,i},ext,i,n,kmeansfunc);
    %附加新值
    palliden=[palliden;idens];
    palldes=[palldes;des];
end
%保存训练数据
creatsvmdata(palliden,palldes,savepath);
end