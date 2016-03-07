close all;
im=imread('main4.jpg');
im = imsharpen(im);
if size(im,3)==3 
    im=rgb2gray(im);
    %figure,imshow(im);
end

threshold = graythresh(im);
threshold = threshold+0.045;
i=~im2bw(im,threshold);

i = bwareaopen(i,60);
figure,imshow(i);
fl=[];
re=i;
k=0;
g=0;
x=0;
comp={};
while k==0
    [fl re]=lines(re);
    figure,imshow(fl);
    %figure,imshow(re);
    [L Ne] = bwlabel(fl);
    for n=1:Ne
        i=fl;
        %figure,imshow(fl);
        [f co]=find(L==n);
        inew=i(min(f):max(f),min(co):max(co));
        
        % uncommented this
        inew=imresize(inew,[42 24]);
    %    figure,imshow(inew);
        comp{1,x+n}=inew;
    end
    x=x+Ne;
    if size(re,1)==0
        k=k+1;
    end
g=g+1;    
end