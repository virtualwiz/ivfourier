fig1 = spectrogram_imp('sound_bird_labMScIntro.wav', 0.010, 0.005, 'hamming');
fig2 = spectrogram_imp('sound_bird_labMScIntro.wav', 0.060, 0.005, 'hamming');
fig3 = spectrogram_imp('sound_flute_labMScIntro.wav', 0.010, 0.005, 'hamming');
fig4 = spectrogram_imp('sound_flute_labMScIntro.wav', 0.060, 0.005, 'hamming');

[snd1, fs1] = audioread('sound_bird_labMScIntro.wav');
[snd2, fs2] = audioread('sound_flute_labMScIntro.wav');


figure
plot(snd1)
title('Waveform of sound.bird')
xlabel('sample indexes')
ylabel('amplitude')
axis([1 length(snd1) -1 1])

figure
plot(snd2)
title('Waveform of sound.flute')
xlabel('sample indexes')
ylabel('amplitude')
axis([1 length(snd2) -1 1])


figure
imagesc(fig1)
title('Spectrogram of sound.bird, Frame len. 10ms, Raw matrix')

figure
imagesc(fig2)
title('Spectrogram of sound.bird, Frame len. 60ms, Raw matrix')

figure
imagesc(fig3)
title('Spectrogram of sound.flute, Frame len. 10ms, Raw matrix')

figure
imagesc(fig4)
title('Spectrogram of sound.flute, Frame len. 60ms, Raw matrix')
