% m_testScaleTrans Performs ²âÊÔ³ß¶È±ä»»
%
%
% -------------------------------------------------------------------
%  Copyright 1992-2015 Ma XiaoLong
%  $Date: 2015/12/07 13:02:34$
% -------------------------------------------------------------------
function [new_patterns, var_mat, means] = m_testScaleTrans(train_patterns)

%Reshape the data points using the scaling transform
%Inputs:
%	train_patterns	- Input patterns
%	train_targets	- Input targets
%	param			- Unused
%   plot_on         - Unused
%
%Outputs
%	new_patterns    - New patterns
%	targets			- New targets
%   var_mat			- Variance matrix
%   means           - Means vector

[r,c]		 = size(train_patterns);
means        = mean(train_patterns')';

new_patterns = train_patterns - means*ones(1,c);

var_mat      = var(new_patterns')';
new_patterns = new_patterns ./ (sqrt(var_mat) * ones(1, c));
