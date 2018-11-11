processingTime = zeros(1, 300)

for count = 1:300
    randomMatrix = rand(800, 800);
    tic
    resultMatrix = inv(randomMatrix);
    processingTime(count) = toc;
    disp(count)
end