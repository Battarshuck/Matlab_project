%Name: Mostafa Osama Abdel-Zaher Mahmoud, ID:1190173, Group:5
%Email:ossamamostafa5@gmail.com
%Title: Pharmacy Management System
function table9(table1, table3)

[R1 C1] = size(table1);
[R3 C3] = size(table3);
drugs_id_t1 = table1(:,1);
drugs_id_t3 = table3(:,2);

%Removing dublicates 
drug_no_duplicates = removing_dublicates(drugs_id_t3);


%Counting how many times a drug has been sold
for i=1:length(drug_no_duplicates)
    c = 0;
    for j=1:R3
        if drug_no_duplicates(i) == drugs_id_t3(j)
            c = c + 1;
        end
    end
    counter(i) = c;
end

%Findig each drug's price
k = 0;
for i =1:length(drug_no_duplicates)
   for j=1:R1
      if drug_no_duplicates(i) == drugs_id_t1(j)
         k = k+1; 
         price(k) = table1(j,2); 
      end
   end
end


fprintf('Options: \n 1.Save it as Excel sheet \n 2.Print on screen \n');
choice = input('Choose: ');
if choice == 1
    name_file = input('What do you want to call the file(with .xlsx extension): ','s');
    xlswrite(name_file,{'Drug id','Number of drugs','Total price'},'sheet1','A1');%labels
    xlswrite(name_file,[drug_no_duplicates', counter', (price.*counter)'],'Sheet1','A2');
    disp('Done!Excel sheet created');
elseif choice == 2
    fprintf('Drugid  N.drugs Tot.price\n');
    disp([drug_no_duplicates', counter', (price.*counter)']);
    disp('NOTE:The data is displayed only but not saved!');
end
end