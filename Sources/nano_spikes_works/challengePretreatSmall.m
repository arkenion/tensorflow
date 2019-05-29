close all
clear all

data = load('sample.mat');

sample = data.sample;
fs = 300000
N = size(sample,2)
t = [0:N-1]/fs;

plot (t,sample,'-o')

figure


plot (t,sample)
axis([0.05,0.06,-Inf,Inf])
figure

plot (t,sample)
figure


nW = 32 % taille de la fenetre
nOverlap = 30 % taille de 'loverlap entre deux instants de calculs
nF= 32 % nb de fréquences a calculer


s = spectrogram(sample,nW,nOverlap,nF,fs,'yaxis');
spectrogram(sample,nW,nOverlap,nF,fs,'yaxis');

view(-45,65)
print('spectrogram.png','-dpng')

% spectrogram(sample,'yaxis')
module = abs(s);
sTh = double(module > 2E-3) ;
figure
mesh(module)
view(-45,65)

figure
mesh(sTh)
view(-45,65)

figure
sMax = max(module,[], 2)
sMaxTh = double(sMax > 2E-3) ;
plot(sMax)

figure
plot(sMaxTh)


