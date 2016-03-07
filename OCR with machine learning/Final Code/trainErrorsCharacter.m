function [features] = trainErrorsCharacter(str,img)
load realinputscharacter.mat
load zcharacter.mat
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
    features1(:,n)=zones(inew);
end
%features
features1 = features1';
z1 = zeros(size(str,2),1);
for i = 1:size(str,2)
    z1(i) = uint8(str(i))-64;
end
realinputscharacter = [realinputscharacter; features1];
zcharacter = [zcharacter; z1];
save realinputscharacter.mat realinputscharacter
save zcharacter.mat zcharacter
'WORD UPDATED'