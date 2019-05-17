clear all;
clc;
FS          = 44100;
nBits       = 16;
NumChannels = 2;
OutFileName = 'test.wav';
TimeCapture = 5;
captura_audio(FS,nBits,NumChannels,OutFileName,TimeCapture)

[t,y] = Extraer_senal('test.wav');

output = Filtro_amplitud(y,0.003);
plot(output)
sound(output,FS);