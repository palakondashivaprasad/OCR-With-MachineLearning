function [] =  saveToExcel1(BranchName,AccountNumber, Name, Amount,  mobileNumber, branchCode) 

headers = {'Branch',	'Account Number',	'Name',	'Amount',	 'Mobile number',	'Branch Code'};

fname = 'data.xlsx' ;
% values = {121, 'asd', 123, 3434, 4545};
values = {BranchName,AccountNumber, Name, Amount,  mobileNumber, branchCode};
xlswrite(fname,  [headers; values]);
end

