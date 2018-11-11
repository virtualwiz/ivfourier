function [result] = spectrogram_imp(filename, frameLength, frameShift, windowType)
% Load an audio in ‘.wav’ format and calculate spectrogram of the signal.

    [sndArray, fs] = audioread(filename);
    windowShift = floor(frameShift * fs);
    windowSize = floor(frameLength * fs);
    
    if windowType == 'hamming'
        windowArray = hamming(windowSize);
    elseif windowType == 'square'
        windowArray = ones(windowsSize, 1);
    else
        disp 'Undefined window type, Assuming square window.'
        windowArray = ones(windowsSize, 1);
    end
    
    cyclesNum = floor(length(sndArray) / windowShift) - floor(windowSize / windowShift);
    result  = zeros(windowSize, cyclesNum);
    for ptr = 1:cyclesNum
        fftStartPos = (ptr - 1) * windowShift + 1;
        fftEndPos = fftStartPos + windowSize - 1;
        result(:, ptr) = 20.*log(abs(fft(windowArray .* sndArray(fftStartPos:fftEndPos))));
    end
    result = result(1:floor(windowSize / 2),:);
        
end

