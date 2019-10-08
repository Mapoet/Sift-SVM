function matwrite(path,mat)
%%
%mat为Matrix
%path为保存路径
%%
%获得图片数目
picsz=size(mat,1);
picdsz=size(mat,2);
fid=fopen(path,'w');
for i=1:picsz
    for j=1:picdsz
        fprintf(fid,'%f\t',j,double(mat(i,j)));
    end
    fprintf(fid,'\n');
end
fclose(fid);
end