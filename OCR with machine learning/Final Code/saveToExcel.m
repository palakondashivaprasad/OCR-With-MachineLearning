function [] =  saveToExcel(BranchName,AccountNumber, Name, Amount,  mobileNumber, branchCode) 

headers= {'Branch',	'Account Number',	'Name',	'Amount',	 'Mobile number',	'Branch Code'};

%headers = {'Acc No.', 'Name', 'Cash Deposit', ' Mobile number', 'Branch'};

fname = 'data.xlsx' ;

[ndata, text, alldata] = xlsread('data.xlsx');
row = size(alldata,1)

values = {BranchName,AccountNumber, Name, Amount,  mobileNumber, branchCode};

range = ['A', num2str(row+1),':F', num2str(row+1)];

xlswrite(fname,values,range);
end

% values = {1, 2, 3 ; 4, 5, 'x' ; 7, 8, 9};
% headers = {'First', 'Second', 'Third'};
% xlswrite('myExample.xlsx', [headers; values]);
