function[retArray] = FIRImp1(inputArray)
    b0 = 1;
    b1 = -1;
    inputRowArray = inputArray';
    shiftedArray = [0];
    shiftedArray = [shiftedArray inputRowArray(1:length(inputRowArray) - 1)];
    retArray = (b0 .* inputRowArray) + (b1 .* shiftedArray);
    retArray = retArray';
end