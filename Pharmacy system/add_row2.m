%Name: Mostafa Osama Abdel-Zaher Mahmoud, ID:1190173, Group:5
%Email:ossamamostafa5@gmail.com
%Title: Pharmacy Management System
function new_row2 = add_row2(new_row2)
    [R C] = size(new_row2);
    customer_id = input('Enter customer id: ');
    price = input('Enter the amount of previous transaction:');
    nb_drugs = input('Enter the number of drugs: ');
    new_row2(R+1,1) = customer_id; 
    new_row2(R+1,2) = price;
    new_row2(R+1,3) = nb_drugs;
    disp('New row added to table2!');
    disp('NOTE:If you want to keep the changes you need to save!');
end