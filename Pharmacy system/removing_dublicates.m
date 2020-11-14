%Name: Mostafa Osama Abdel-Zaher Mahmoud, ID:1190173, Group:5
%Email:ossamamostafa5@gmail.com
%Title: Pharmacy Management System
function x = removing_dublicates(y)
m=1; 
for i=1:length(y)
    n=0;
    for j=i+1:length(y)
        if y(i) == y(j) 
            n=n+1;
            break; 
        end
    end
    if n==0 
        x(m)=y(i);
        m=m+1; 
    end
end
end