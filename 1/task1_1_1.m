a = [4 1 3 2 1 0 2 1 4 0]

b = [];
for ptr = 1:length(a)
    if a(ptr) > mean(a)
        b = [b ptr];
    end
end
    
c = [];
for ptr = 1:length(a)
    if a(ptr) > mean(a)
        c = [c a(ptr)];
    end
end

b
c