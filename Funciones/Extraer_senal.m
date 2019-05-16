function [t,y] = Extraer_senal(fileName)
%EXTRAER_SEÑAL Summary of this function goes here
%   Parameters
%   t = signal time line
%   y = y(t) it's wave amplitud
%   This function extract sound signal from an specific file(.wav)

info = audioinfo(fileName);
[y,Fs] = audioread(fileName);

t = 0:seconds(1/Fs):seconds(info.Duration); 
t = t(1:end-1);
end

