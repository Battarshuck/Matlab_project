%Name: Mostafa Osama Abdel-Zaher Mahmoud, ID:1190173, Group:5
%Email:ossamamostafa5@gmail.com
%Title: Pharmacy Management System
function table = load_table()
table_name = input('Enter file name(with .xlsx extension ): ','s');
table = xlsread(table_name);
disp('Done!Table loaded successfully!');
end