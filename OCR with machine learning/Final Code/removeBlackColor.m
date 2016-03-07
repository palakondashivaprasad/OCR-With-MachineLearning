%training characters
BranchName = 0;
AccountNumber = 0;
Name = 0;
Amount = 0;
mobileNumber = 0;
branchCode = 0;
close all;
load 'realinputscharacter.mat'
load 'zcharacter.mat'
load 'realinputsnumber.mat'
load 'znumber.mat'
A=imread('test6.jpg');
toStore = [];
%figure,imshow(A);
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
figure,imshow(i);
fl=[];
re=i;
k=0;
g=0;
x=0;
comp={};
lineNumber= 0;
while k==0
    [fl re]=lines(re);
    [L Ne] = bwlabel(fl);
    figure,imshow(L);
    L = medfilt2(L);
    figure,imshow(L);
    resultcharacter = [];
    resultnumber = [];
    for n=1:Ne
        i=fl;
        [f co]=find(L==n);
        inew=i(min(f):max(f),min(co):max(co));
        
        if(lineNumber == 0 || lineNumber == 1 || lineNumber == 3 ||lineNumber == 4 || lineNumber == 5)
            [feat tempres] = featuresNumber(inew,realinputsnumber,znumber);
            tempres;
            if(tempres == 10)
                tempres = 0;
            end
            resultnumber = [resultnumber tempres];
            
        end
        if(lineNumber == 2)
            [feat tempres] = featuresCharacter(inew,realinputscharacter,zcharacter);
            tempres;
            resultcharacter = [resultcharacter tempres];
            
        end
        %figure,imshow(inew);
        %inew1=imresize(inew,[42 24]);
        comp{1,Ne*g+n}=inew;
    end
    if(lineNumber == 0 || lineNumber == 1 || lineNumber == 3 ||lineNumber == 4 || lineNumber == 5)
            resultnumber
            if(lineNumber == 0)
                BranchName = strcat(num2str(resultnumber));
                BranchName= BranchName(find(~isspace(BranchName)))
            end
            if(lineNumber == 1)
                AccountNumber = strcat(num2str(resultnumber));
                AccountNumber= AccountNumber(find(~isspace(AccountNumber)))
            end
            if(lineNumber == 3)
                Amount = strcat(num2str(resultnumber));
                Amount= Amount(find(~isspace(Amount)))
            end
            if(lineNumber == 4)
                mobileNumber = strcat(num2str(resultnumber));
                mobileNumber= mobileNumber(find(~isspace(mobileNumber)))
            end
            if(lineNumber == 5)
                branchCode = strcat(num2str(resultnumber));
                branchCode= branchCode(find(~isspace(branchCode)))
            end
            isCorrect = input('Is the number correct');
            if(isCorrect == 0)
                str = input('Please Enter the number:','s');
            if(lineNumber == 0)
                BranchName = str;
            end
            if(lineNumber == 1)
                AccountNumber = str;
            end
            if(lineNumber == 3)
                Amount = str;
            end
            if(lineNumber == 4)
                mobileNumber = str;
            end
            if(lineNumber == 5)
                branchCode = str;
            end
                trainErrorsNumber(str,fl);
            end

    end
        if(lineNumber == 2)
            dum = char(resultcharacter+64)
            Name = strcat(dum);
            
            isCorrect = input('Is the name correct');
            if(isCorrect == 0)
                str = input('Please Enter the name:','s');
                Name = str;
                trainErrorsCharacter(str,fl);
            end
        end
    x=x+Ne;
    if size(re,1)==0
        k=k+1;
    end
g=g+1;
lineNumber = lineNumber+1;
end

saveToExcel(BranchName,AccountNumber, Name, Amount,  mobileNumber, branchCode)

