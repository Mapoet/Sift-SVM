function creatsvmdata(idens,des,path)
%%
%idensΪͼƬ����
%desΪͼƬ����
%pathΪ����·��
%%
%���ͼƬ��Ŀ
picsz=size(idens,1);
picdsz=size(des,2);
fid=fopen(path,'w');
for i=1:picsz
    fprintf(fid,'%d\t',idens(i));
    for j=1:picdsz
        fprintf(fid,'%d:%f\t',j,double(des(i,j)));
    end
    fprintf(fid,'\n');
end
fclose(fid);
end