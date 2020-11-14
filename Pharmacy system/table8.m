%Name: Mostafa Osama Abdel-Zaher Mahmoud, ID:1190173, Group:5
%Email:ossamamostafa5@gmail.com
%Title: Pharmacy Management System 
function table8(table2, table7_data)

while 1
if isempty(table7_data)
   disp('ERROR!You must go first to option 7 before option 8!'); 
   break; 
end
[R C] = size(table7_data);
[R2 C2] = size(table2);

customer_order_drugs = table7_data(:,1);
customer_id_t2 = table2(:,1);
total_previous_amount = table2(:,2);
for i =1:R2
    sum_amount = 0;
   for j=1:R
      if customer_id_t2(i) == customer_order_drugs(j)
         sum_amount = sum_amount + table7_data(j,4);
           
      end
   end
   total_current_amount(i) = sum_amount; 
end

for i=1:length(total_current_amount)
    if total_current_amount(i) >= 120 && total_current_amount(i) < 250
        extra_discount(i) = 10;
        
    elseif total_current_amount(i) >= 250 && total_current_amount(i) < 500
        extra_discount(i) = 15;
        
    elseif total_current_amount(i) >= 500 
        extra_discount(i) = 30;
        
    else
        extra_discount(i) = 0;
    end
end

price_after_extraDiscount = total_current_amount - total_current_amount.*extra_discount/100;

fprintf('Options: \n 1.Save it as Excel sheet \n 2.Print on screen \n');
choice = input('Choose: ');
if choice == 1
    name_file = input('What do you want to call the file(with .xlsx extension): ','s');
    xlswrite(name_file,{'Customer id','Total amout of previous orders','Total amout of current orders','Extra discount','Total amount after extra discount'},'sheet1','A1');%labels
    xlswrite(name_file,[customer_id_t2, total_previous_amount, total_current_amount', extra_discount', price_after_extraDiscount'],'Sheet1','A2');
    disp('Done!Excel sheet created');
    break;
elseif choice == 2
    fprintf('Cust.id  prv.orders   cur.orders  Ex.disc. Price after Ex.disc.\n');
    disp([customer_id_t2, total_previous_amount, total_current_amount', extra_discount', price_after_extraDiscount']);
    disp('NOTE:The data is displayed only but not saved!');
    break;
end
end
end