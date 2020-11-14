%Name: Mostafa Osama Abdel-Zaher Mahmoud, ID:1190173, Group:5
%Email:ossamamostafa5@gmail.com
%Title: Pharmacy Management System
function table7_data = table7(table1, table3)

[R1 C1] = size(table1);
[R3 C3] = size(table3);
customers_id = table3(:,1);
drugs_id_t1 = table1(:,1);
drugs_id_t3 = table3(:,2);
%c is just a counter
c = 0;

for i =1:R3
   for j=1:R1
      if drugs_id_t3(i) == drugs_id_t1(j)
         c = c+1; 
         price(c) = table1(j,2); 
         price_discount(c) = table1(j,2)-table1(j,2)*table3(i,3)/100;
      end
   end
end

table7_data = [customers_id, drugs_id_t3,price', price_discount'];
fprintf('Options: \n 1.Save it as Excel sheet \n 2.Print on screen \n');
choice = input('Choose: ');
if choice == 1
    name_file = input('What do you want to call the file(with .xlsx extension): ','s');
    xlswrite(name_file,{'Customer id','Drug id','Price','Price with discount'},'sheet1','A1');%labels
    xlswrite(name_file,table7_data,'Sheet1','A2');
    disp('Done!Excel sheet created');
elseif choice == 2
    fprintf('Customer id  Drug id   Price      Price with discount \n');
    disp(table7_data);
    disp('NOTE:The data is displayed only but not saved!');
end

end