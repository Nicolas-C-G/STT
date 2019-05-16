function [status] = captura_audio(FS,nBits,NumChannels,OutFileName,TimeCapture)
%CAPTURA_AUDIO Summary of this function goes here
%   @Parameters
%   -----------------------------------
%   FS         : Sampling frequency
%   nBits      : Bits per sample
%   NumChannels: Number of Channels
%   OutFileName: Output file name
%   TimeCapture: Time to capture sample
%   -----------------------------------
%   This function capture the sample and save in a custom file name. If all
%   is ok this function will be return status = 200
    try
        SampleObject = audiorecorder(FS,nBits,NumChannels);
        disp('Start speaking.') 
        recordblocking(SampleObject, TimeCapture); 
        disp('End of Recording.');

        AudioData = getaudiodata(SampleObject);
        audiowrite(OutFileName,AudioData,FS);
        status = 200;
    catch
        status = 400;
    end
end

