function norm = mynorm1(matrix)
    dim = size(matrix);
    max = 0;
    for i=1:dim(2)
        row = matrix(:,i);
        if (max < sum(abs(row)))
           max = sum(abs(row));
        end
    end
    norm = max;
end

