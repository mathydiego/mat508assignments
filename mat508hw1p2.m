%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MAT 508 HW 1 Problem 2
% Here, we compare the computation times of the products (AB)*x vs A*(Bx).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% We use matrices of size up to 1000.
n=1000;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (AB)*x case
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cputimes = zeros(1,n);
for k=1:n    
    A=rand(k); B=rand(k); x=rand(k,1);
    tic;
    matrix = A*B;
    final = matrix*x;
    cputimes(k) = toc;
end
figure(1)
plot(cputimes,'k');
title('(AB)*x'); xlabel('Matrix Size'); ylabel('CPU Time in Seconds');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% A*(Bx) case
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cputimes = zeros(1,n);
for k=1:n    
    A=rand(k); B=rand(k); x=rand(k,1);
    tic;
    vector = B*x;
    final = A*vector;
    cputimes(k) = toc;
end
figure(2)
plot(cputimes,'k');
title('A(B*x)'); xlabel('Matrix Size'); ylabel('CPU Time in Seconds');
