function [cliden,cldes]=getpathpicdes(picturespath,ext,type,n,kmeanfunc)
%%���picturespath��һ·��������ͼƬ������
%picturespath·��
%type�����
%kmeanfunc���෽ʽ
%%
%�������ͼƬ·��
filenames=getallfiles(picturespath,ext);
%�������ͼƬ��Ŀ
clnum=size(filenames,1);
%�������Idens
cliden=type*ones(clnum,1);%type�Ǳ�ǩ
%����ͼ������
cldes=[];
for i=1:clnum
    cldes=[cldes;picidening(filenames{i},n,kmeanfunc)];
end
end