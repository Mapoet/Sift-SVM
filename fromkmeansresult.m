function despic=fromkmeansresult(siftimg,n,IDX, C, sumd, D)
%统计各聚类中心点的数目
allcount(1,1:n)=0;
potsz=size(IDX,1);
for i=1:potsz
    allcount(1,IDX(i))=allcount(1,IDX(i))+1;
end
maxcount=max(allcount);
for i=1:n
    if maxcount==allcount(i);
        maxindex=i;
    end
end
%统计maxnidexclus
allclus=sum(C(maxindex,:));
%获得sumd
sumd=sumd';
%获得各点距中心和
allcenter=sum(D,1);
%图片特征值返回
despic=[allcount,allclus,sumd,allcenter];
end