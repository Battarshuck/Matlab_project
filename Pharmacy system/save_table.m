%Name: Mostafa Osama Abdel-Zaher Mahmoud, ID:1190173, Group:5
%Email:ossamamostafa5@gmail.com
%Title: Pharmacy Management System
function [new_row1, new_row2, new_row3] = save_table(table1, table2, table3, new_row1, new_row2, new_row3)

while 1
    
    if isempty(new_row1) && isempty(new_row2) && isempty(new_row3) 
        %because he cannot save without adding a new row
        fprintf('ERROR!!can not save without adding a new row! \n Go to option 1 to add new row \n');
        break;
    end
    
    k = input('Which table you want to save(1,2,3): '); %table number
    if k == 1
        [R C] = size(table1);
        [R1 C1] = size(new_row1);
        counter = 0;
        for i = 1:R1
            index = 0;
            %to make sure the program will not use the find function for
            %a completely empty table
            if R ~= 0               
                index = find(table1(:,1) == new_row1(i,1));
            end
                if index ~= 0
                    %if the drug is already in the excel sheet
                    %I will replace the old price with the new one
                    table1(index,2)= new_row1(i,2);
                else
                    counter = counter+1;
                    table1(R+counter,1) = new_row1(i,1);
                    table1(R+counter,2) = new_row1(i,2);
                end         
        end
        name_table1 = input('Enter file name(with .xlsx extension): ','s');
        xlswrite(name_table1,{'Drug ID','Price'},'Sheet1','A1');
        xlswrite(name_table1,table1,'sheet1','A2');
        disp('Table1 has been saved succefully !');
        new_row1 = [];
        break;
        
    elseif k == 2
      
        [R C] = size(table2);
        [R1 C1] = size(new_row2);
        %checking if the customer is already in the excel sheet
        counter = 0;
        for i = 1:R1
            index = 0;
            if R ~= 0
                index = find(table2(:,1) == new_row2(i,1));
            end
            if index ~= 0 
                %if the client exists 
                table2(index,2) = table2(index,2) + new_row2(i,2);
                table2(index,3) = table2(index,3) + new_row2(i,3);
            else
                counter = counter+1;
                %if the client doesn't exist
                table2(R+counter,1) = new_row2(i,1);
                table2(R+counter,2) = new_row2(i,2);
                table2(R+counter,3) = new_row2(i,3);
            end
        end
        name_table2 = input('Enter file name(with .xlsx extension): ','s');
        xlswrite(name_table2,{'Customer ID','Previous Order Amount','Total Drugs'},'Sheet1','A1');
        xlswrite(name_table2,table2,'sheet1','A2');
        disp('Table2 has been saved succefully !');
        new_row2 = [];
        break;
        
    elseif k == 3
    
        [R C] = size(table3);
        [R1 C1] = size(new_row3);
        for i= 1:R1
            table3(R+i,1) = new_row3(i,1);
            table3(R+i,2) = new_row3(i,2);
            table3(R+i,3) = new_row3(i,3);
        end
        name_table3 = input('Enter file name(with .xlsx extension): ','s');
        xlswrite(name_table3,{'Customer ID','Drug ID','Discount'},'Sheet1','A1');
        xlswrite(name_table3,table3,'sheet1','A2');
        disp('Table3 has been saved succefully !');
        new_row3 = [];
        break;
    end
end
disp('NOTE:If you want to use the new version of the table, you need to load it again.');
end