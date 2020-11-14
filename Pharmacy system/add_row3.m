%Name: Mostafa Osama Abdel-Zaher Mahmoud, ID:1190173, Group:5
%Email:ossamamostafa5@gmail.com
%Title: Pharmacy Management System
function new_row3 = add_row3(new_row3)
    [R C] = size(new_row3);
    customer_id = input('Enter customer id: '); 
    drug_id = input('Enter drug id: ');
    discount = input('Enter discount(%): ');
    new_row3(R+1,1) = customer_id;
    new_row3(R+1,2) = drug_id;
    new_row3(R+1,3) = discount;
    disp('New row added to table3!');
    disp('NOTE:If you want to keep the changes you need to save!');
    
end