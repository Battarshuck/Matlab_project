%Name: Mostafa Osama Abdel-Zaher Mahmoud, ID:1190173, Group:5
%Email:ossamamostafa5@gmail.com
%Title: Pharmacy Management System
function new_row1 = add_row1(new_row1)
    [R C] = size(new_row1);
    drug_id = input('Enter drug id: ');
    drug_price = input('Enter drug price: ');
    new_row1(R+1,1) = drug_id;
    new_row1(R+1,2) = drug_price;
    disp('New row added to table1!');
    disp('NOTE:If you want to keep the changes you need to save!');
end