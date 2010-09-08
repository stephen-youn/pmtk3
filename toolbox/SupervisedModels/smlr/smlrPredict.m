function [yhat, p] = smlrPredict(model, Xtest)
%% Predictions for a sparse multinomial logistic regression
% We predict using the plugin approximation 

if model.usePath
  Ktest = preprocessorApplyToTest(model.preproc, Xtest);
  [yhat, p] = logregPredict(model.bestPathModel, Ktest);
else
  [yhat, p] = logregPredict(model, Xtest);
end

end
