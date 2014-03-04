function y = elliptic(f1, f2, g1, g2, N, M, f)

exact = @(x,y) x*y;
k = @(i,j) j+((N-1)*i);
dx = 1/N;
dy = 1/M;
x = 0:dx:1;
y = 0:dy:1;

len_x = length(x);
len_y = length(y);

for i=1:N+1
    U(1,i) = f1(x(i));
    U(len_y,i) = f2(x(i));
end

for i=1:M+1
    U(i,1) = g1(y(i));
    U(i, len_x) = g2(y(i));
end

%A = sparse((N-1)^2, (N-1)^2);
A = zeros((N-1)^2, (N-1)^2);

for i=2:N
    
    for j=2:M
        K = k(i-2,j-1);
        R(K) = (dx^2)*f(x(i),y(j));
        if i-1==1
            R(K) = R(K)-U(i-1,j);
        else
            A(K,K-N+1) = 1;
        end
        
        if i==N
            R(K) = R(K) - U(N+1,j);
        else
            A(K,K+N-1) = 1;
        end;
        
        if j-1==1
            R(K) =  R(K) - U(i,j-1);
        else
            A(K,K-1) = 1;
        end
        
        if j==M
            R(K) = R(K) - U(i,M+1);
        else
            A(K,K+1) = 1;
        end
        
        A(K,K) = -4;
    end
end

X = A\R';
%A
%spy(A);
r=1;
for i=2:N
    for j=2:M
        U(i,j) = X(r);
        r = r+1;
    end
end

surfc(U);

for i=1:N+1
    for j=1:M+1
        exact_sol(i,j) = exact(x(i),y(j));
    end
end

exact_sol
error = abs(U-exact_sol);
surfc(error)

