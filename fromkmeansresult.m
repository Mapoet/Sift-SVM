function despic=fromkmeansresult(siftimg,n,IDX, C, sumd, D)
%ͳ�Ƹ��������ĵ����Ŀ
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
%ͳ��maxnidexclus
allclus=sum(C(maxindex,:));
%���sumd
sumd=sumd';
%��ø�������ĺ�
allcenter=sum(D,1);
%ͼƬ����ֵ����
despic=[allcount,allclus,sumd,allcenter];
end