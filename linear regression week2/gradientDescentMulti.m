function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
j1=0;
j2=0;
j3=0;
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
for iter = 1:num_iters
	h=X*theta;
	
	for i=1:m
		j1=j1+(h(i)-y(i));
		j2=j2+(h(i)-y(i)).*X(i,2);
		j3=j3+(h(i)-y(i)).*X(i,3);
	end
	j1=j1/m;
	j2=j2/m;
	j3=j3/m;
	

	t1=theta(1)-alpha*j1;
	t2=theta(2)-alpha*j2;
	t3=theta(3)-alpha*j3;
	
	theta(1)=t1;
	theta(2)=t2;
	theta(3)=t3;
	











    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
