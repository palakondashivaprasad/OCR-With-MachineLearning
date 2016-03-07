load('realinputscharacter.mat')
load('realinputsnumber.mat')
load('znumber.mat')
load('zcharacter.mat')
znumber = znumber(1:300);
save znumber.mat znumber
realinputsnumber = realinputsnumber(1:300,:);
save realinputsnumber.mat realinputsnumber
zcharacter = zcharacter(1:780);
save zcharacter.mat zcharacter
realinputscharacter = realinputscharacter(1:780,:);
save realinputscharacter.mat realinputscharacter