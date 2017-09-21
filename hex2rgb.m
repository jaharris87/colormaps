function [ rgb ] = hex2rgb( hex )
    rgb = cell2mat(cellfun(@hex2dec,regexp(hex,'\w{2}','match'),'UniformOutput',false))/255;
    if isa(hex,'cell');
        rgb = rgb';
    end
end