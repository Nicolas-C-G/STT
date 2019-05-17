function [output] = Filtro_amplitud(data,threshold)
%FILTRO_AMPLITUD Summary of this function goes here
% Parameters
% Data : y(t)[aplitud]
% Detailed explanation goes here

lenght = size(data);
lenght = lenght(1);
output = zeros(lenght,1);

    for i = 1:lenght
        if abs(data(i))>threshold
            output(i,1)=data(i);
        end
    end

end

