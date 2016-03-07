z1 = zeros(size(realtargets,1),1)
% for i = 1:size(realtargets,1)
%     found = 0;
%     for j = 1:10
%         if(realtargets(i,j) == 1)
%             found = 1;
%             z1(i) = j;
%             break
%         end
%     end
% end

z1 = 1:10;
z1= [z1 z1 z1 z1 z1 z1 z1 z1];
z1 =[z1 z1 z1 z1];
z1 = z1(1:300);
z1=z1';