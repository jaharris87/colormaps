function [ map ] = distinct(m)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if nargin < 1
   m = size(get(gcf,'colormap'),1);
end

m = max( min( m, 12 ), 1 );

if m <= 4
    ColorSet(1,:)  = [hex2dec('44'),hex2dec('77'),hex2dec('AA')];
else
    ColorSet(1,:)  = [hex2dec('33'),hex2dec('22'),hex2dec('88')];
end
ColorSet(2,:)  = [hex2dec('CC'),hex2dec('66'),hex2dec('77')];
ColorSet(3,:)  = [hex2dec('11'),hex2dec('77'),hex2dec('33')];
ColorSet(4,:)  = [hex2dec('DD'),hex2dec('CC'),hex2dec('77')];
ColorSet(5,:)  = [hex2dec('88'),hex2dec('CC'),hex2dec('EE')];
ColorSet(6,:)  = [hex2dec('AA'),hex2dec('44'),hex2dec('99')];
ColorSet(7,:)  = [hex2dec('44'),hex2dec('AA'),hex2dec('99')];
ColorSet(8,:)  = [hex2dec('99'),hex2dec('99'),hex2dec('33')];
ColorSet(9,:)  = [hex2dec('88'),hex2dec('22'),hex2dec('55')];
ColorSet(10,:) = [hex2dec('66'),hex2dec('11'),hex2dec('00')];
ColorSet(11,:) = [hex2dec('66'),hex2dec('99'),hex2dec('CC')];
ColorSet(12,:) = [hex2dec('AA'),hex2dec('44'),hex2dec('66')];
ColorSet = ColorSet ./ 255;

map = ColorSet(1:m,:);

end