function predicted_label = ClassfyPictureTest(testpath,ext,svmtestpath,n,kmeansfunc,model)
%生成svmttext文件数据


[telabel,tedata]=creatsvmfrompath(testpath,ext,svmtestpath,n,kmeansfunc);
%进行预测
%[predicted_label,accuracy,prob_estimates]=svmpredict(telabel,tedata,model);
predicted_label = svmclassify(model,tedata);

% matwrite('labels.txt',predicted_label);
% matwrite('accuracy.txt',accuracy);
% matwrite('prob_estimates.txt',prob_estimates);
%下面的要自己统计（自己做了）

end