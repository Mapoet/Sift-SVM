function model = ClassfyPictureTrain(trainpath,ext,svmtrainpath,n,kmeansfunc)
%%ͨ��trainpath��ͼ����kmeansfunc��ʽ����ģ�͹��������model������
%picturepath�����������ͼ�ε��ļ�·��
%kmeansfunc����kmeans���෽ʽ
%%ʵ�ֹ���
%����svmtrain�ļ�����
[trlabel,trdata]=creatsvmfrompath(trainpath,ext,svmtrainpath,n,kmeansfunc);
%��ȡsvmtrain����
%!python grid.py svmpath
%�õ�c g 
%0.03125 0.0078125 25.0 
%Ԥ��ģ��
model=svmtrain(trdata,trlabel);
end



