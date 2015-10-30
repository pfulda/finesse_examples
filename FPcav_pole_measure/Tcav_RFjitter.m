%----------------------------------------------------------------
% function [x,y] = Tcav_RFjitter(noplot)
% Matlab function to plot Finesse output data
% Usage: 
%   [x,y] = Tcav_RFjitter    : plots and returns the data
%   [x,y] = Tcav_RFjitter(1) : just returns the data
%           Tcav_RFjitter    : just plots the data
% Created automatically Fri Oct 30 14:08:08 2015
% by Finesse pre-2.1.0 (pre-2.1.0-177-g0bde7a5), 29.10.2015
%----------------------------------------------------------------
function [x,y] = Tcav_RFjitter(noplot)

data = load('Tcav_RFjitter.out');
[rows,cols]=size(data);
x=data(:,1);
y=data(:,2:cols);
mytitle='Tcav\_RFjitter                Fri Oct 30 14:08:08 2015';
if (nargin==0)

figure('name','Tcav_RFjitter');

h1=subplot(2,1,1);
plot(x, y(:,1), x, y(:,3));
legend('am\_trans nMCTRANS', 'am\_in nMC1in*');
set(gca, 'YScale', 'log');
ylabel('Abs ');
set(gca, 'XLim', [1 1e+07]);
set(gca, 'XScale', 'log');
xlabel('f [Hz] (sweptEOAM)');
grid on;

h2=subplot(2,1,2);
plot(x, y(:,2), x, y(:,4));
legend('am\_trans nMCTRANS', 'am\_in nMC1in*');
ylabel('Phase [Deg] ');
set(gca, 'XLim', [1 1e+07]);
set(gca, 'XScale', 'log');
xlabel('f [Hz] (sweptEOAM)');
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
