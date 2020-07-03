function summa = halfsum(A)
    [row,col] = size(A);
    summa = 0;
    for i = 1:row
        for j = 1:col
            if j - i >=0
               summa = summa + A(i,j);
        end
    end
end
    
