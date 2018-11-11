function[retArray] = FIRImp2(inputArray)
    hImpulseResponse = [0.5 0.5 0.5 0.5 0.5 0.3 0.2 0.1];
    retArray = zeros(1, length(inputArray) + length(hImpulseResponse) - 1);
    for index = 1:length(inputArray)
        retArray(index:index + length(hImpulseResponse) - 1) = ...
        retArray(index:index + length(hImpulseResponse) - 1) + ...
        inputArray(index) .* hImpulseResponse;
    end
    retArray = retArray';
end