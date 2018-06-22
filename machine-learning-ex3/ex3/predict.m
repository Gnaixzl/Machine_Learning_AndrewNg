function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


% Theta1.shape = [25, 400+1], Theta2.shape = [10, 25+1]
% y_pred.shape = [5000, 10];
X = [ones(m, 1) X]; % X.shape = [5000, 400+1]

a1 = sigmoid(X * Theta1');
a1 = [ones(m, 1) a1]; % a1.shape = [5000, 25+1];

y_pred = sigmoid(a1 * Theta2');

[ max_num, p] = max(y_pred, [], 2);




% =========================================================================


end