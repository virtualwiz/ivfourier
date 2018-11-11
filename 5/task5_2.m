processingTime = zeros(1, 300);
processingSize = zeros(1, 300);

for count = 1:300
    matrixSize = randi(500) + 500;
    randomMatrix = rand(matrixSize, matrixSize);
    tic
    resultMatrix = inv(randomMatrix);
    processingTime(count) = toc;
    processingSize(count) = matrixSize;
    disp(count)
end

figure
scatter(processingSize, 1000 * processingTime)
title('Scatter Plot of Processing Time and Matrix Size')
xlabel('Matrix Size')
ylabel('Processing Time(ms)')
