function [palliden,palldes]=creatsvmfrompath(srcpaths,ext,savepath,n,kmeansfunc)
%%��·������ͼƬ��svmdata�������ļ�
%srcpath�����������ͼ�ε��ļ�·��
%savepath����svmdata���ļ�·��
%kmeansfunc����kmeans���෽ʽ
%%
%��÷�����
pclassnum=size(srcpaths,2);
palliden=[];
palldes=[];
%���и����ำֵ
for i=1:pclassnum
    %���һ·���������ļ�����
    [idens,des]=getpathpicdes(srcpaths{1,i},ext,i,n,kmeansfunc);
    %������ֵ
    palliden=[palliden;idens];
    palldes=[palldes;des];
end
%����ѵ������
creatsvmdata(palliden,palldes,savepath);
end