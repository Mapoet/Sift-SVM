function predicted_label = ClassfyPictureTest(testpath,ext,svmtestpath,n,kmeansfunc,model)
%����svmttext�ļ�����


[telabel,tedata]=creatsvmfrompath(testpath,ext,svmtestpath,n,kmeansfunc);
%����Ԥ��
%[predicted_label,accuracy,prob_estimates]=svmpredict(telabel,tedata,model);
predicted_label = svmclassify(model,tedata);

% matwrite('labels.txt',predicted_label);
% matwrite('accuracy.txt',accuracy);
% matwrite('prob_estimates.txt',prob_estimates);
%�����Ҫ�Լ�ͳ�ƣ��Լ����ˣ�

end