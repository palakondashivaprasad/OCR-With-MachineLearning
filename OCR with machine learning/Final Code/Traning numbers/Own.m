clear
close all
im=imread('main1.jpg');
if size(im,3)==3 
    im=rgb2gray(im);
    %figure,imshow(im);
end
threshold = graythresh(im);
i=~im2bw(im,threshold);
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
        figure,imshow(inew);
        %inew1=imresize(inew,[42 24]);
        comp{1,Ne*g+n}=inew;
    end
    x=x+Ne;
    if size(re,1)==0
        k=k+1;
    end
g=g+1;    
end
real_inputs1=[];
real_targets1=zeros(10,x);
for i=1:x
    real_inputs1(:,i)=zones(comp{1,i});
    if (mod(i,26))==1
        real_targets1(1,i)=1;
    end
    if (mod(i,26))==2
        real_targets1(2,i)=1;
    end
    if (mod(i,26))==3
        real_targets1(3,i)=1;
    end
    if (mod(i,26))==4
        real_targets1(4,i)=1;
    end
    if (mod(i,26))==5
        real_targets1(5,i)=1;
    end
    if (mod(i,26))==6
        real_targets1(6,i)=1;
    end
    if (mod(i,26))==7
        real_targets1(7,i)=1;
    end
    if (mod(i,26))==8
        real_targets1(8,i)=1;
    end
    if (mod(i,26))==9
        real_targets1(9,i)=1;
    end
    if (mod(i,26))==10
        real_targets1(10,i)=1;
    end
end
% Max=max(real_inputs1,[],2);
% Min=min(real_inputs1,[],2);
% real_inputs1=mapminmax(real_inputs1,0,15);
% real_inputs1=round(real_inputs1);


im=imread('main2.jpg');
if size(im,3)==3 
    im=rgb2gray(im);
    %figure,imshow(im);
end
threshold = graythresh(im);
i=~im2bw(im,threshold);
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
real_inputs2=[];
real_targets2=zeros(10,x);
for i=1:x
    real_inputs2(:,i)=zones(comp{1,i});
    if (mod(i,26))==1
        real_targets2(1,i)=1;
    end
    if (mod(i,26))==2
        real_targets2(2,i)=1;
    end
    if (mod(i,26))==3
        real_targets2(3,i)=1;
    end
    if (mod(i,26))==4
        real_targets2(4,i)=1;
    end
    if (mod(i,26))==5
        real_targets2(5,i)=1;
    end
    if (mod(i,26))==6
        real_targets2(6,i)=1;
    end
    if (mod(i,26))==7
        real_targets2(7,i)=1;
    end
    if (mod(i,26))==8
        real_targets2(8,i)=1;
    end
    if (mod(i,26))==9
        real_targets2(9,i)=1;
    end
    if (mod(i,26))==10
        real_targets2(10,i)=1;
    end
end
% Max=max(real_inputs2,[],2);
% Min=min(real_inputs2,[],2);
% real_inputs2=mapminmax(real_inputs2,0,15);
% real_inputs2=round(real_inputs2);


im=imread('main3.jpg');
if size(im,3)==3 
    im=rgb2gray(im);
    %figure,imshow(im);
end
threshold = graythresh(im);
i=~im2bw(im,threshold);
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
real_inputs3=[];
real_targets3=zeros(10,x);
for i=1:x
    real_inputs3(:,i)=zones(comp{1,i});
    if (mod(i,26))==1
        real_targets3(1,i)=1;
    end
    if (mod(i,26))==2
        real_targets3(2,i)=1;
    end
    if (mod(i,26))==3
        real_targets3(3,i)=1;
    end
    if (mod(i,26))==4
        real_targets3(4,i)=1;
    end
    if (mod(i,26))==5
        real_targets3(5,i)=1;
    end
    if (mod(i,26))==6
        real_targets3(6,i)=1;
    end
    if (mod(i,26))==7
        real_targets3(7,i)=1;
    end
    if (mod(i,26))==8
        real_targets3(8,i)=1;
    end
    if (mod(i,26))==9
        real_targets3(9,i)=1;
    end
    if (mod(i,26))==10
        real_targets3(10,i)=1;
    end
end
% Max=max(real_inputs3,[],2);
% Min=min(real_inputs3,[],2);
% real_inputs3=mapminmax(real_inputs3,0,15);
% real_inputs3=round(real_inputs3);

im=imread('main3.jpg');
if size(im,3)==3 
    im=rgb2gray(im);
    %figure,imshow(im);
end
threshold = graythresh(im);
i=~im2bw(im,threshold);
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
real_inputs4=[];
real_targets4=zeros(10,x);
for i=1:x
    real_inputs4(:,i)=zones(comp{1,i});
    if (mod(i,26))==1
        real_targets4(1,i)=1;
    end
    if (mod(i,26))==2
        real_targets4(2,i)=1;
    end
    if (mod(i,26))==3
        real_targets4(3,i)=1;
    end
    if (mod(i,26))==4
        real_targets4(4,i)=1;
    end
    if (mod(i,26))==5
        real_targets4(5,i)=1;
    end
    if (mod(i,26))==6
        real_targets4(6,i)=1;
    end
    if (mod(i,26))==7
        real_targets4(7,i)=1;
    end
    if (mod(i,26))==8
        real_targets4(8,i)=1;
    end
    if (mod(i,26))==9
        real_targets4(9,i)=1;
    end
    if (mod(i,26))==10
        real_targets4(10,i)=1;
    end
end


realinputs = [real_inputs1 real_inputs2 real_inputs3 real_inputs4];
realtargets = [real_targets1 real_targets2 real_targets3 real_targets4];
realinputs = realinputs';
realtargets = realtargets';

