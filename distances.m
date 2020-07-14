function distance = get_distance(city1,city2)
    [~,~,raw] = xlsread('Distances.xlsx'); %copies the whole data, numbers and strings
    [row, col]=size(raw); r = 0; c = 0; %initializes the row and column, q to zero and w to 0 
    
    for i = 2:row %skips one because it null
        if strcmp(raw{i,1}, city1)==1 %compares the raw cell row by row to the first city
            r = i; %copies index for row
            break;
        end
    end
    
    for j = 2:col
        if strcmp(raw{1,j}, city2) == 1 %copares, column by column
            c = j; %copies the index then breaks
            break;
        end
    end
    
    if r>1 && c>1  
        distance = raw{r,c};
    else 
        distance = -1;
    end
end
