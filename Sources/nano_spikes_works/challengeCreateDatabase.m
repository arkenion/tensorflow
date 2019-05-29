close all
clear all

data = load('waveform_of_the_clicks_TRAIN_TEST_sets.mat');

mymat = data.clicksrando;

features = [];
id = [1:10];
id = [id, 1201, 2401, 2901];

id = 1:size(mymat,1);

for i = id
    i
    sample = mymat(i,:);

    x = slidingTF(sample);
    %plot (x,'-o')
    %axis([-Inf,Inf, 0, 0.03])
    %figure
    features = [features; x];
end 


%% LES VERITES TERRAIN ET LE SPLIT DE BASE
data = load('metarandoXYZTrain.mat');

XYZ = data.metarandoXYZTRAIN;

noClickIndex = find (XYZ(:,1)==-1 & XYZ(:,2)==-1 & XYZ(:,2)==-1);

range = sqrt(sum(XYZ.^2,2));
range(noClickIndex) =  -1 ;

csvwrite('pureRange.csv',range)
csvwrite('rangeAndZ.csv',[range,XYZ(:,3)])



%hist(range, 20)
%print('histRange.png','-dpng')

%% TESTS
% testXYZ = XYZ(10,:)
% 
% testRange = sqrt(testXYZ(1)^2+testXYZ(2)^2+testXYZ(3)^2)
% range(10)

edges = [-5,0,1000, 1200, 1500,2000, 10000]
[counts, classes] = histc(range,edges);

classes = classes -1;
figure
hist (classes)

csvwrite('classes.csv',classes)




nTrain = 4024;
truths = classes;

featuresLog = log(features);


% 
% nsamples = size(id,2);
% features;
% truths = randi([0,4],nsamples,1);

train = [features(1:nTrain,:), truths];
test = features(nTrain+1:end,:);

nbTest = size(test,1);
testPseudoTruths = randi([0,4],nbTest,1);

test = [test,testPseudoTruths];

csvwrite('trainClick.csv', train)
csvwrite('testClick.csv', test)



featuresNorm = myNormalise(featuresLog);
trainNorm = [featuresNorm(1:nTrain,:), truths];
testNorm = [featuresNorm(nTrain+1:end,:),testPseudoTruths];

csvwrite('trainClickNorm.csv', trainNorm)
csvwrite('testClickNorm.csv', testNorm)

for i = 1:17
    hist(featuresNorm(:,i))
    figure()
end



