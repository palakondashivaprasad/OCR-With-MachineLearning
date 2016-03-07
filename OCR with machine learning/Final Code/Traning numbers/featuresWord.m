function [features] = featuresWord(img,realinputs,z)
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
result = multisvm(realinputs,z,features1)