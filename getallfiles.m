function [filenames]=getallfiles(folderdir,ext)
%%获得folderdir下的以ext为后缀的所有文件
fileFolder=fullfile(folderdir);
dirOutput=dir(fullfile(fileFolder,ext));
filenames={dirOutput.name}';
num=size(filenames,1);
for i=1:num
    filenames{i}=strcat(folderdir,filenames{i});
end
end