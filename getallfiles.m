function [filenames]=getallfiles(folderdir,ext)
%%���folderdir�µ���extΪ��׺�������ļ�
fileFolder=fullfile(folderdir);
dirOutput=dir(fullfile(fileFolder,ext));
filenames={dirOutput.name}';
num=size(filenames,1);
for i=1:num
    filenames{i}=strcat(folderdir,filenames{i});
end
end