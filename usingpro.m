function predicted_label = usingpro(trains,tests,ext,n,kmeansfunc)
%%��trains�¸���ͼƬ���࣬����tests�����飬
%nΪkmeans��������
%kmeansfuncΪ���෽ʽ
%%����
currPath = fileparts(mfilename('fullpath'));
%����ѵ����·��
trsz=size(trains,2);
for i=1:trsz
    trainpath{i}=strcat(currPath,'\ģ������\',trains{i},'\');
end
%���ü��鳡·��
tesz=size(tests,2);
for i=1:tesz
    testpath{i}=strcat(currPath,'\��������\',tests{i},'\');
end
%����ѵ����svm·��
trainsvmpath=strcat(currPath,'\svmtrain.txt');
%���ò��Գ�svm·��
testsvmpath=strcat(currPath,'\svmtest.txt');
%���ģ�Ͳ���
model=ClassfyPictureTrain(trainpath,ext,trainsvmpath,n,kmeansfunc);
%����ģ�ͼ���
predicted_label = ClassfyPictureTest(testpath,ext,testsvmpath,n,kmeansfunc,model);
end



