close all
clear all

data = load('metarandoXYZTrain.mat');

XYZ = data.metarandoXYZTRAIN;

noClickIndex = find (XYZ(:,1)==-1 & XYZ(:,2)==-1 & XYZ(:,2)==-1);

range = sqrt(sum(XYZ.^2,2));
range(noClickIndex) =  -1 ;

csvwrite('pureRange.csv',range)
csvwrite('rangeAndZ.csv',[range,XYZ(:,3)])



hist(range, 20)
print('histRange.png','-dpng')

%% TESTS
% testXYZ = XYZ(10,:)
% 
% testRange = sqrt(testXYZ(1)^2+testXYZ(2)^2+testXYZ(3)^2)
% range(10)

edges = [-5,0,1000, 1200, 1500,2000, 10000]
[counts, classes] = histc(range,edges);

classes = classes -2;
figure
hist (classes)

sum(range <0)


csvwrite('classes.csv',classes)

