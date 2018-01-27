function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
k=X*theta-y;
J=(sum(sum((k).^2)))/(2*m)+(lambda/(2*m))*(sum(sum(theta(2:end,:).^2)));
% You need to return the following variables correctly 
grad = zeros(size(theta));
grad = (sum(repmat(k,1,size(X,2)).*X)')/m+(lambda/m)*([zeros(1,size(theta,2)); theta(2:end,:)]);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
