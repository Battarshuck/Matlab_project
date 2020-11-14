%Name: Mostafa Osama Abdel-Zaher Mahmoud, ID:1190173, Group:5
%Email:ossamamostafa5@gmail.com
%Title: Pharmacy Management System
function table_display(table1, table2, table3)

      c  = input('Which table you want to display(1,2,3): ');
      
      while c > 3 || c < 1
          c = input('ERROR!Enter an integer between 1 & 3: ');
      end 
      
      if c ==1
         
          [R C] = size(table1);
          fprintf('Drug ID \t    Price \n');
          for i=1:R
              fprintf('%5d \t\t %8.2f \n',table1(i,1),table1(i,2));
          end
      elseif c == 2
          
          [R C] = size(table2);
          fprintf('Customer ID \t prv.Order amount \t Total drugs \n');
          for i=1:R
              fprintf('%8d \t\t\t %8.2f \t\t\t %5d \n',table2(i,1),table2(i,2),table2(i,3));
          end
      elseif c == 3
          
          [R C] = size(table3);
          fprintf('Customer ID \t Drug ID \t Discount \n');
          for i=1:R
              fprintf('%5d \t\t\t %5d \t\t\t %2d \n',table3(i,1),table3(i,2),table3(i,3));
          end
      end
      disp('Done!');
end