function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   updates theta by taking num_iters gradient steps with learning rate alpha
%   also keeps a vector tracking the cost in each step 

m = length(y); % number of training examples
n = size(X,2); % number of features
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    
    h =  X * theta;
    dist = (h - y)'
    
    for j = 1:n,
      theta(j) = theta(j) - alpha * sum(dist * X(:,j)) / m ;
    end;

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
