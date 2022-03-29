function [norm] = normInf(matrix)
    dim = size(matrix);
    max = 0;
    for i=1:dim(1)
        row = matrix(i,:);
        row_sum = 0;
        for j=1:length(row)
            row_sum = row_sum + abs(row(j));
        end
        if (max < row_sum)
           max = row_sum; 
        end
    end
    norm = max;
end

