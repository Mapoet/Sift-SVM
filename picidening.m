function despic=picidening(picpath,n,kmeansfunc)
%%���pic��sift��������
%picpathΪͼƬ·��
%n������Ŀ
%kmeansfunc�������
%%����
%���sift������������������
[siftimg,siftpot,siftdes]=sift(picpath);
%��m��theta����128ά��������sift�����������
alldes=fromsiftresult(siftpot,siftdes);
%���л��������㼰��������kmeanfunc��������kmeans����
ifsz=size(kmeansfunc,2);
if floor(ifsz/2)~=ifsz/2
    error(message('kmeansfunc������һһ��Ӧ�Ĳ���'));
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
%�ݷ���������������
despic=fromkmeansresult(siftimg,n,IDX, C, sumd, D);
end