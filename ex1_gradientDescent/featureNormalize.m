function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X and vectors containing
%   the means (mu) and std deviations (sigma) of all features. 
%   This is often a good preprocessing step to do when
%   working with learning algorithms.

X_norm = X;
mu = mean(X);
sigma = std(X);
for i = 1:size(X,1),
     X_norm(i,:) = (X(i,:) - mu) ./ sigma;
end;

end
