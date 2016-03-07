close all;
im = imread('test7.png');
if size(im,3)==3 
    im=rgb2gray(im);
    %figure,imshow(im);
end
threshold = graythresh(im);
%threshold = 0.1;
i=~im2bw(im,threshold);

i = bwareaopen(i,30);
imshow(i);
[f co]=find(i==1);
i=i(min(f):max(f),min(co):max(co));
mini = min(f);
maxi = max(f);
[L N] = bwlabel(i);  
features1=[];
k=i;
im=k;
featuresWord(im,realinputs,z1);
%features