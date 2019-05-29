
i = 1426
%i = 2557
sample = mymat(i,:);

   

fs = 300000;
    N = size(sample,2);
    t = [0:N-1]/fs;


    nW = 32; % taille de la fenetre
    nOverlap = 30; % taille de 'loverlap entre deux instants de calculs
    nF= 32; % nb de fréquences a calculer

    s = spectrogram(sample,nW,nOverlap,nF,fs,'yaxis');

    module = abs(s);
    
    figure
    
    mesh (log(module))