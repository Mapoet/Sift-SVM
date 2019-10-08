function predicted_label = usingpro(trains,tests,ext,n,kmeansfunc)
%%对trains下各类图片分类，并用tests，检验，
%n为kmeans分类数，
%kmeansfunc为分类方式
%%过程
currPath = fileparts(mfilename('fullpath'));
%设置训练场路径
trsz=size(trains,2);
for i=1:trsz
    trainpath{i}=strcat(currPath,'\模型数据\',trains{i},'\');
end
%设置检验场路径
tesz=size(tests,2);
for i=1:tesz
    testpath{i}=strcat(currPath,'\测试数据\',tests{i},'\');
end
%设置训练场svm路径
trainsvmpath=strcat(currPath,'\svmtrain.txt');
%设置测试场svm路径
testsvmpath=strcat(currPath,'\svmtest.txt');
%获得模型参数
model=ClassfyPictureTrain(trainpath,ext,trainsvmpath,n,kmeansfunc);
%进行模型检验
predicted_label = ClassfyPictureTest(testpath,ext,testsvmpath,n,kmeansfunc,model);
end



