function [features] = trainErrorsNumber(str,img)
load realinputsnumber.mat
load znumber.mat
SE = strel('square',7);
img = imdilate(img,SE);
img = imerode(img,SE);
[L N] = bwlabel(img);
features1=[];
k=img;
for n=1:N
    im=k;
    [f co]=find(L==n);
    inew=im(min(f):max(f),min(co):max(co));
    features1(:,n)=zones(inew);
end
%features
features1 = features1';
z1 = zeros(size(str,2),1);
for i = 1:size(str,2)
    z1(i) = uint8(str(i))-48;
    if(z1(i)== 0)
        z1(i)= 10;
    end
end
realinputsnumber = [realinputsnumber; features1];
znumber = [znumber; z1];
save realinputsnumber.mat realinputsnumber
save znumber.mat znumber
'NUMBER UPDATED'