function [ map ] = sequential(m)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if nargin < 1
   m = size(get(gcf,'colormap'),1);
end

x(:,1) = linspace( 0, 1, m );

r = 1     - 0.392 * ( 1 + erf( ( x - 0.869)/0.255 ) );
g = 1.021 - 0.456 * ( 1 + erf( ( x - 0.527)/0.376 ) );
b = 1     - 0.493 * ( 1 + erf( ( x - 0.272)/0.309 ) );

map = [r,g,b];

end