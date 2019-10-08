function despic=picidening(picpath,n,kmeansfunc)
%%获得pic的sift聚类特征
%picpath为图片路径
%n聚类数目
%kmeansfunc聚类参数
%%过程
%获得sift特征点与特征点向量
[siftimg,siftpot,siftdes]=sift(picpath);
%由m，theta，与128维特征计算sift特征点相关性
alldes=fromsiftresult(siftpot,siftdes);
%进行基于特征点及特征的用kmeanfunc参数进行kmeans分类
ifsz=size(kmeansfunc,2);
if floor(ifsz/2)~=ifsz/2
    error(message('kmeansfunc必须是一一对应的参数'));
end
if ifsz==0
    [IDX,C,sumd,D]=kmeans(alldes,n);
end
if ifsz==2
    [IDX,C,sumd,D]=kmeans(alldes,n,kmeansfunc{1,1},kmeansfunc{1,2});
end
if ifsz==4
    [IDX,C,sumd,D]=kmeans(alldes,n,kmeansfunc{1,1},kmeansfunc{1,2},kmeansfunc{1,3},kmeansfunc{1,4});
end
if ifsz==6
    [IDX,C,sumd,D]=kmeans(alldes,n,kmeansfunc{1,1},kmeansfunc{1,2},kmeansfunc{1,3},kmeansfunc{1,4},kmeansfunc{1,5},kmeansfunc{1,6});
end
if ifsz==8
    [IDX,C,sumd,D]=kmeans(alldes,n,kmeansfunc{1,1},kmeansfunc{1,2},kmeansfunc{1,3},kmeansfunc{1,4},kmeansfunc{1,5},kmeansfunc{1,6},kmeansfunc{1,7},kmeansfunc{1,8});
end
%据分类结果计算特征量
despic=fromkmeansresult(siftimg,n,IDX, C, sumd, D);
end