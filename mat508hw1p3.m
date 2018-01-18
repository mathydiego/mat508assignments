%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       MAT 508 HW 1 Problem 3
% Here, we compare the computation times of the product AB by using
% the outter product form, the inner product form, matrix-vector form, and
% the matrix-matrix (plain * Matlab function) form.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% We use matrices of size up to n.
n=100;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Outter Product Form
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cputimes = zeros(1,n);
for k=1:n    
    A=rand(k); B=rand(k);
    tic;
    outerproduct=zeros(k);
    for p=1:k
        outerproduct = outerproduct + A(:,p)*B(p,:);
    end
    cputimes(k) = toc;
end
figure(1)
plot(cputimes,'k');
title('Outter Product Form');
xlabel('Matrix Size'); ylabel('CPU Time in Seconds');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Inner Product Form
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cputimes = zeros(1,n);
for k=1:n    
    A=rand(k); B=rand(k);
    tic;
    innerproduct=zeros(k);
    for i=1:k
        for j=1:k
            innerproduct(i,j) = A(i,:)*B(:,j);
        end
    end
    cputimes(k) = toc;
end
figure(2)
plot(cputimes,'k');
title('Inner Product Form');
xlabel('Matrix Size'); ylabel('CPU Time in Seconds');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matrix-Vector Form
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cputimes = zeros(1,n);
for k=1:n    
    A=rand(k); B=rand(k);
    tic;
    matrixvector=zeros(k);
    for j=1:k
        matrixvector(:,j) = A*B(:,j);
    end
    cputimes(k) = toc;
end
figure(3)
plot(cputimes,'k');
title('Matrix-Vector Form');
xlabel('Matrix Size'); ylabel('CPU Time in Seconds');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matrix-Matrix Form
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cputimes = zeros(1,n);
for k=1:n    
    A=rand(k); B=rand(k);
    tic;
    matrixmatrix = A*B;
    cputimes(k) = toc;
end
figure(4)
plot(cputimes,'k');
title('Matrix-Matrix Form');
xlabel('Matrix Size'); ylabel('CPU Time in Seconds');
