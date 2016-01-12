%----------------------------------------------------------------
% function [x,y] = linear_cav(noplot)
% Matlab function to plot Finesse output data
% Usage: 
%   [x,y] = linear_cav    : plots and returns the data
%   [x,y] = linear_cav(1) : just returns the data
%           linear_cav    : just plots the data
% Created automatically Mon Jan  4 21:24:07 2016
% by Finesse pre-2.1.0 (pre-2.1.0-214-gb47a545), 29.12.2015
%----------------------------------------------------------------
function [x,y] = linear_cav(noplot)

data = load('linear_cav.out');
[rows,cols]=size(data);
x=data(:,1);
y=data(:,2:cols);
mytitle='linear\_cav                Mon Jan  4 21:24:07 2016';
if (nargin==0)

figure('name','linear_cav');
plot(x, y(:,1));
legend(' nEMout');
set(gca, 'YScale', 'lin');
ylabel('Abs ');
set(gca, 'XLim', [-10 10]);
xlabel('phi [deg] (EM)');
grid on;
title(mytitle);
end

switch nargout
 case {0}
  clear x y;
 case {2}
 otherwise
  error('wrong number of outputs');
end
