load('procTime52.mat');
n = 300;

s_x = sqrt(var(processingSize));
s_y = sqrt(var(processingTime));

x_avg = mean(processingSize);
y_avg = mean(processingTime);

sum = 0;
for index = 1 : n
    sum = sum + (processingSize(index) - x_avg).*(processingTime(index) - y_avg);
end

r_xy = ((1 ./ n) * sum) ./ (s_x .* s_y);

r_xy