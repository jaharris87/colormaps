function [ map ] = diverge_blue_yellow_red(m)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if nargin < 1
   m = size(get(gcf,'colormap'),1);
end

x(:,1) = linspace( 0, 1, m );

r = 0.237 - 2.130*x + 26.92*x.^2 - 65.5*x.^3 + 63.5*x.^4 - 22.36*x.^5;
g = (( 0.572 + 1.524*x - 1.811*x.^2 ) ./ ( 1 - 0.291*x + 0.1574*x.^2 )).^2;
b = 1 ./ ( 1.579 - 4.03*x + 12.92*x.^2 - 31.4*x.^3 + 48.6*x.^4 - 23.36*x.^5 );

map = [r,g,b];

end