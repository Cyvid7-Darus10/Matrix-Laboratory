function matrix = sparse2matrix(CELL)
    matrix = zeros(CELL{1});
    matrix(:) = CELL{2};
    len = length(CELL);
     for i = 3:len
        row = CELL{i}(1);
        col = CELL{i}(2);
        val = CELL{i}(3);
        matrix(row,col) = val;
     end
end
