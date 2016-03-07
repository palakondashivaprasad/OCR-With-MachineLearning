%training characters
close all;
A=imread('test26.png');
figure,imshow(A);
data = A;
data(:,:,1)= data(:,:,1)>120 & data(:,:,2)<120 & data(:,:,3)<120;
data(:,:,1)= data(:,:,1)*255;
data(:,:,2)= data(:,:,1)*255;
data(:,:,3)= data(:,:,1)*255;
data(:,:,2)= data(:,:,1)>120 & data(:,:,2)<120 & data(:,:,3)<120;
data(:,:,3)= data(:,:,1)>120 & data(:,:,2)<120 & data(:,:,3)<120;
%data = rgb2gray(data);
%figure,imshow(data);
 
im = data;
if size(im,3)==3 
    im=rgb2gray(im);
    %figure,imshow(im);
end
threshold = graythresh(im);
%threshold = 0.1;
i=im2bw(im,threshold);

i = bwareaopen(i,30);
imshow(i);

fl=[];
re=i;
k=0;
g=0;
x=0;
comp={};
while k==0
    [fl re]=lines(re);
    [L Ne] = bwlabel(fl);
    for n=1:Ne
        i=fl;
        [f co]=find(L==n);
        inew=i(min(f):max(f),min(co):max(co));
        featuresWord(inew,realinputscharacter,zcharacter);
        %figure,imshow(inew);
        %inew1=imresize(inew,[42 24]);
        comp{1,Ne*g+n}=inew;
    end
    x=x+Ne;
    if size(re,1)==0
        k=k+1;
    end
g=g+1;    
end

