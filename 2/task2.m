[sndArray, fs] = audioread('./sineWave800Hz+whiteNoise_Fs20kHz_Oct2016.wav');

figure
plot(sndArray)
title('Waveform of Input Signal: Sine Wave + White Noise')
xlabel('sample indexes')
ylabel('amplitude')
axis([1 length(sndArray) -1 1])

output1 = FIRImp1(sndArray);
audiowrite("fir1_out.wav", output1, fs)

figure
plot(output1)
title('Waveform of Output Signal: FIR 1')
xlabel('sample indexes')
ylabel('amplitude')
axis([1 length(sndArray) -1 1])

output2 = FIRImp2(sndArray);
audiowrite("fir2_out.wav", output2, fs)

figure
plot(output2)
title('Waveform of Output Signal: FIR 2')
xlabel('sample indexes')
ylabel('amplitude')
axis([1 length(sndArray) -2 2])


impulse = zeros(256, 1);
impulse(1) = 1;
response1 = FIRImp1(impulse);
response1_spectrum = 20 .* log10(abs(fft(response1)));
response2 = FIRImp2(impulse);
response2 = response2(1:256);
response2_spectrum = 20 .* log10(abs(fft(response2)));

impulse_freq_index = [0:255] * (fs / 256);

figure
plot(impulse_freq_index, response1_spectrum)
title('Spectrum of Impulse Response: FIR 1')
xlabel('Frequency(Hz)')
ylabel('Magnitude(dB)')
axis([0 10000 -15 15])
line([800 800],ylim,'Color',[1 0 0])


figure
plot(impulse_freq_index, response2_spectrum)
title('Spectrum of Impulse Response: FIR 2')
xlabel('Frequency(Hz)')
ylabel('Magnitude(dB)')
axis([0 10000 -15 15])
line([800 800], ylim, 'Color',[1 0 0])

output1_freq_index = [0:length(output1)-1] * (fs / length(output1));
output2_freq_index = [0:length(output2)-1] * (fs / length(output2));

output1_spectrum = 20 .* log10(abs(fft(output1)));
figure
plot(output1_freq_index , output1_spectrum)
title('Spectrum of Output Signal 1')
xlabel('Frequency(Hz)')
ylabel('Magnitude(dB)')
axis([0 10000 -15 100])

output2_spectrum = 20 .* log10(abs(fft(output2)));
figure
plot(output2_freq_index , output2_spectrum)
title('Spectrum of Output Signal 2')
xlabel('Frequency(Hz)')
ylabel('Magnitude(dB)')
axis([0 10000 -15 100])


