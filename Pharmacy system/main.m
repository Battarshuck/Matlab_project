%Name: Mostafa Osama Abdel-Zaher Mahmoud, ID:1190173, Group:5
%Email:ossamamostafa5@gmail.com
%Title: Pharmacy Management System
clc, clear 
%defining new rows arrays at the start
%and initializing initial values 
%as I used the isempty() built-in function to avoid crashing
new_row1 = [];
new_row2 = [];
new_row3 = [];
table1 = [];
table2 = [];
table3 = [];
table7_data = [];

disp('<----Pharmacy Management System---->');
enter = input('Press Enter to start the program');
clc
while 1
  option = main_menu_display();
  
  while option <= 0 || option > 10
      option = input('ERROR! Please re-enter an integer between 1 & 10: ');
  end
  
  
  if option == 1
      clc
      new_row1 = add_row1(new_row1);
  elseif option == 2
      clc
      new_row2 = add_row2(new_row2);
  elseif option == 3
      clc
      new_row3 = add_row3(new_row3);
  elseif option == 4
      clc
      choice = input('Which table you want to load(1,2,3): ');
      
      while choice > 3 || choice < 1
          choice = input('ERROR!Enter an integer between 1 & 3: ');
      end 
      
      if choice == 1
            table1=load_table();
        elseif choice == 2
            table2=load_table();
        elseif choice == 3
            table3 = load_table();
      end
        
  elseif option == 5
      clc
      [new_row1 new_row2 new_row3] = save_table(table1, table2, table3, new_row1, new_row2, new_row3);
  elseif option == 6
     clc
     table_display(table1, table2, table3);
  elseif option == 7
      clc
      table7_data = table7(table1, table3);
  elseif option == 8
      clc
      table8(table2, table7_data);
  elseif option == 9
      clc
      table9(table1, table3);
  elseif option == 10
      clc
      disp('Thank you!');
      break;
  end
  disp('------------------------------------------------------------------');
end
