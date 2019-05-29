close all
clear all

data = load('waveform_of_the_clicks_TRAIN_TEST_sets.mat');

mymat = data.clicksrando;

%i = 2401; % Moins clair
%i = 1500
i = 1201 %% Super Clair
%i = 4001 % Rien du tout ?
%i = 2901 % Top Moumoutte

i = 1426
i = 2557
sample1 = mymat(i,:);

save ('sample.mat', 'sample')
