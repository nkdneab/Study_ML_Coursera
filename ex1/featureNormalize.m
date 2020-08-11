function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
for i = 1:size(X, 2)
    mu = zeros(1, size(X, 2));
    sigma = zeros(1, size(X, 2));

    sigma = sigma + std(X(:,i));
    mu = mu + mean(X(:,i));

    X_norm(:,i) = ( X(:,i) - mu )/sigma;
end










% ============================================================

end
