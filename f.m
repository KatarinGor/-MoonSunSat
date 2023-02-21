function dydt = f(t,y)

 
 %% Система уравнений в нормальной форме Коши
    n = 9;
    dydt = zeros((2 * n),1);
    
     
    xi1 = y(1:3);
    xi2 = y(4:6);
    xi3 = y(7:9);
    
    temp = calcAccel([xi1 xi2 xi3]);
     
    dydt(1:n)=y(10:18);
    dydt(10:end)=temp;
    
end