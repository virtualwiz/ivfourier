function [retCellArray] = genCellArray(matM, inpV)
    [sizeR sizeC] = size(matM);
    [tgtC tgtR] = find(matM' == inpV);
    retSubMatA = matM(1:tgtR, 1:tgtC);
    retSubMatB = matM(tgtR+1:sizeR, tgtC+1:sizeC);
    retCellArray = {retSubMatA, retSubMatB};
end

