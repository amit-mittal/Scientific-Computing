function y=BTCS(f1, f2, g, N, M, T, exact)

dt = T/M;
dx = 1/N;
t = 0:dt:T;
x = 0:dx:1;
len_t = length(t);
len_x = length(x);
lambda = dt/(dx^2);

for i=1:len_x
    for j=1:len_t
    
        exact_sol(j,i) = exact(x(i), t(j));
    end
end

for i=2:len_t
    U(i,1) = f1(t(i));
    U(i,len_x) = f2(t(i));
end

for i=1:len_x
    U(1,i) = g(x(i));
end

A = sparse(N-1,N-1);

for j=2:M+1
    
    A(1,1) = -(2*lambda + 1);
    A(1,2) = lambda;
    A(N-2, N-1) = lambda;
    A(N-1, N-1) = -(2*lambda + 1);
    R(1) = -U(j-1,2) - lambda*U(j,1);
    R(N-1) = -U(j-1,len_x-1) - lambda*U(j,len_x);
    for i=2:N-2    
        A(i,i-1) = lambda;
        A(i,i) = -(2*lambda + 1);
        A(i,i+1) = lambda;
        R(i) = -U(j-1,i+1);
    end
    figure(1);
    spy(A);
    
    U(j,2:len_x-1) = A\R';    
end

U;
exact_sol;
error = abs(U-exact_sol)
surfc(U);