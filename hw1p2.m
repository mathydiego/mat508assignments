n=1000;
cputimes = zeros(1,n);

for k=1:n    
    A=rand(k); B=rand(k);
    tic;
    product = A*B;    
    cputimes(k) = toc;
end

plot(cputimes);
