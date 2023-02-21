function a = calcAccel(xi)
    %% ¬ычисление векторов обобщенных ускорений
    AstroData;
    
    k = 4 * pi ^ 2;

    xi12 = xi(:,2) - xi(:,1);
    xi13 = xi(:,3) - xi(:,1);
    xi23 = xi(:,3) - xi(:,2);

    s12 = sqrt(xi12' * xi12);
    s13 = sqrt(xi13' * xi13);
    s23 = sqrt((xi23' * xi23));

    a1 = (k * kappa(2) / s12 ^ 3) * xi12 + (k * kappa(3) / s13 ^ 3) * xi13;
    a2 = -(k * kappa(1) / s12 ^ 3) * xi12 + (k * kappa(3) / s23 ^ 3) * xi23;
    a3 = -(k * kappa(1) / s13 ^ 3) * xi13 - (k * kappa(2) / s23 ^ 3) * xi23;
    
    a = [a1; a2; a3];
    
end