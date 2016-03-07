%training characters
close all;
load 'realinputscharacter.mat'
load 'zcharacter.mat'
load 'realinputsnumber.mat'
load 'znumber.mat'
A=imread('test25.png');
im = A;

[feat tempres] = featuresCharacter(im,realinputscharacter,zcharacter);
char(tempres+64)
