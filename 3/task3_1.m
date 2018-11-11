fig1 = spectrogram_imp('sound_bird_labMScIntro.wav', 0.010, 0.005, 'hamming');
fig2 = spectrogram_imp('sound_bird_labMScIntro.wav', 0.060, 0.005, 'hamming');
fig3 = spectrogram_imp('sound_flute_labMScIntro.wav', 0.010, 0.005, 'hamming');
fig4 = spectrogram_imp('sound_flute_labMScIntro.wav', 0.060, 0.005, 'hamming');

figure
imagesc(fig1)

figure
imagesc(fig2)

figure
imagesc(fig3)

figure
imagesc(fig4)
