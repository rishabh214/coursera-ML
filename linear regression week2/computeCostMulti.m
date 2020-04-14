function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y


%d=load("ex1data2.txt");
%m=length(d);
%X=[ones(m,1),d(:,1:2)];
%Y=d(:,3);
%theta=[0;0;0]


% Initialize some useful values
m = length(y); % number of training examples
h=X*theta;
% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
for i=1:m;
	J=J+((h(i)-y(i))^2);
end

J=J/(2*m);




% =========================================================================

end
