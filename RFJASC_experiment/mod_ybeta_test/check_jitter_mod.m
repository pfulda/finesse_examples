%----------------------------------------------------------------
% function [x,y] = check_jitter_mod(noplot)
% Matlab function to plot Finesse output data
% Usage: 
%   [x,y] = check_jitter_mod    : plots and returns the data
%   [x,y] = check_jitter_mod(1) : just returns the data
%           check_jitter_mod    : just plots the data
% Created automatically Wed Dec 30 15:10:50 2015
% by Finesse pre-2.1.0 (pre-2.1.0-214-gb47a545), 29.12.2015
%----------------------------------------------------------------
function [x,y] = check_jitter_mod(noplot)

data = load('check_jitter_mod.out');
[rows,cols]=size(data);
x=data(:,1);
y=data(:,2:cols);
mytitle='check\_jitter\_mod                Wed Dec 30 15:10:50 2015';
if (nargin==0)

figure('name','check_jitter_mod');

h1=subplot(2,1,1);
plot(x, y(:,1), x, y(:,3), x, y(:,5), x, y(:,7), x, y(:,9), x, y(:,11), x, y(:,13));
legend('adHG00USB ndets', 'adHG10USB ndets', 'adHG01USB ndets', 'adHG00LSB ndets', 'adHG10LSB ndets', 'adHG01LSB ndets', 'pdRFAMcheck ndets');
set(gca, 'YScale', 'lin');
ylabel('Abs ');
set(gca, 'XLim', [1e-09 0.0001]);
xlabel('midx  (eobd)');
grid on;

h2=subplot(2,1,2);
plot(x, y(:,2), x, y(:,4), x, y(:,6), x, y(:,8), x, y(:,10), x, y(:,12), x, y(:,14));
legend('adHG00USB ndets', 'adHG10USB ndets', 'adHG01USB ndets', 'adHG00LSB ndets', 'adHG10LSB ndets', 'adHG01LSB ndets', 'pdRFAMcheck ndets');
ylabel('Phase [Deg] ');
set(gca, 'YScale', 'lin');
set(gca, 'XLim', [1e-09 0.0001]);
xlabel('midx  (eobd)');
grid on;

subplot(2,1,1);
title(mytitle);
end

switch nargout
 case {0}
  clear x y;
 case {2}
 otherwise
  error('wrong number of outputs');
end
