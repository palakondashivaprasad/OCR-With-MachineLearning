function [features result] = featuresCharacter(img,realinputs,z)
SE = strel('square',4);
img = imdilate(img,SE);
img = imerode(img,SE);
[L N] = bwlabel(img);
features1=[];
k=img;
for n=1:N
    im=k;
    [f co]=find(L==n);
    inew=im(min(f):max(f),min(co):max(co));
    %figure,imshow(inew);
    features1(:,n)=zones(inew);
end
%features
features1 = features1';
features = features1;
result = multisvm(realinputs,z,features1);
char(result'+64);
%'Character executed'