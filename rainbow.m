function [ map ] = rainbow(m)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if nargin < 1
   m = size(get(gcf,'colormap'),1);
end

x(:,1) = linspace( 0, 1, m );

r = ( 0.472 - 0.567*x + 4.05*x.^2 ) ./ ( 1 + 8.72*x - 19.17*x.^2 + 14.1*x.^3 );
g = 0.108932 - 1.22635*x + 27.284*x.^2 - 98.577*x.^3 + 163.3*x.^4 - 131.395*x.^5 + 40.634*x.^6;
b = 1 ./ ( 1.97 + 3.54*x - 68.5*x.^2 + 243*x.^3 - 297*x.^4 + 125 * x.^5 );

map = [r,g,b];

end