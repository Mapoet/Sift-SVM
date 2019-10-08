function [cliden,cldes]=getpathpicdes(picturespath,ext,type,n,kmeanfunc)
%%获得picturespath这一路径下所有图片的特征
%picturespath路径
%type分类号
%kmeanfunc分类方式
%%
%获得所有图片路径
filenames=getallfiles(picturespath,ext);
%获得所有图片数目
clnum=size(filenames,1);
%获得特征Idens
cliden=type*ones(clnum,1);%type是标签
%构造图像特征
cldes=[];
for i=1:clnum
    cldes=[cldes;picidening(filenames{i},n,kmeanfunc)];
end
end