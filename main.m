clear all;
clc;
FS          = 44100;
nBits       = 16;
NumChannels = 2;
OutFileName = 'test.wav';
TimeCapture = 5;
captura_audio(FS,nBits,NumChannels,OutFileName,TimeCapture)