# Matlab_project
University project, pharmacy system


Pharmacy Management System is program made using MATLAB, in this report I will discuss and explain how the program works. The user must start first by creating three excel sheets manually with any name he wants, that gives the user the opportunity to use a pre-existing excel sheet, or a new excel sheet that is completely empty. 
Table1 contains two columns Drugs IDs and the price of each one. Table2 contains three columns Customer ID, Total amount of all previous orders, and Total drugs number of all previous orders. Table3 contains three columns Customer ID, Drug ID, and discount (%) according to the health insurance policy.
The program starts by printing out for the user the Main Menu, which contains ten options that I will explain how they work further in the report.
 
Option 1, 2 & 3
In these options, the user adds a new row or multiple rows to one of the three tables, by adding the requested data to an array or a matrix called new_row1, new_row2, or new_row3; depends on the table the user’s choice. The data is only saved in the array in the program, and not saved in the excel sheet. After, the program returns the main menu. 
 
 
Option 4
In this option, the program loads one table of the three tables the user entered at the start in a 2D array(matrix) called table1, table2 or table3. The loaded table is used to save the new row from option1 to the excel sheet of that table; by asking the user to enter the number of the table he wants to save. 


Option 5
After loading one of the tables in option4, it is time to save. The user chooses which table he wants to save.
If the user did not add any new row in option 1 to new_row1, new_row2, or new_row3, the program prints out an error message.
 
Option 6
In this option, the user chooses the table he wants to display.
 
Option 7
The program computes a table of ordered drugs, the table contains Customer ID, Drug ID, Drug price, and Drug price after discount. The user must choose whether he wants to save the data in an excel sheet and name it or print it on screen, but the data will not be saved anywhere.


Option 8
The program computes a table of extra discount to all ordered drugs, the table contains Customer ID, Total amount of all previous orders, Total amount of all current orders, extra discount, and Total amount of all current orders after the extra discount.
The extra discount is based on total amount of all current orders, if the amount is more than 120, the customer gets 10%, if more than or equal 250 he gets 15%, if more than or equal 500 he gets 30%.


Option 8 needs table7 for the customer IDs and to calculate total amount of all previous orders. The program prints out an error if the user tries to run option 8 before option 7. 


Option 9
The program computes a table showing how many Drugs are ordered, the table contains Drug ID, total number of ordered drugs, and total price without any discounts.


Option 10
This option exits the program with a message says, “Thank you!”.


Important Notes
1.	The user must be careful and be precise with the data, for example the user cannot add an id of drug in table3 that does not exist in table1, otherwise table7 will most probably crash.
2.	For the add_row function, the user can add multiple rows as a table by returning to the same option1,2&3 and adding new data. The user will have a small table with the new data, then he needs to load the main table. After, the user needs to save.
3.	The user cannot run option8 without running option7 first, because the data in table8 depends on the Data in table7. If the user tried to do that the program will print an error message that will tell the user to go to option7 first.
4.	I used several times in the program a pre-existing function called isempty() function only to catch errors and to prevent the program from crashing. For example, I used it in option8 to print an error message that will tell the user to go to option7 first.
5.	Any changes to the table need to be saved first, and to use the latest version of the same table; the user must load the table again. For example, if the user added a new row to table1, saved it, and he wants to display it. He will display the old version, so he needs to load table1 again with the newly added row, same thing if the user wants to use the new rows for table7,8&9.	
