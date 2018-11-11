function [c] = splitMatrix(matM, inpV)
    [row, col] = size(matM);
    [rowV, colV] = find(matM == inpV);
    TgtIndex = find(rowV == min(rowV));
    c1 = matM(1:rowV(TgtIndex), 1:colV(TgtIndex));
    c2 = matM(rowV(TgtIndex) + 1:row, colV(TgtIndex)+1:col);
    c = {c1, c2};
end

