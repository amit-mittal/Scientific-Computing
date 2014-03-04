function[output] = fixed_point(a, c)
% f = @(x) x^2 -  8;
tol = 10^(-4);
b = (a+(c/a))/2;
while(abs(a-b)>tol)
    a = b;
    b = (a+(c/a))/2;
    fprintf('Error %d\n', b-sqrt(c));
end
output = b;
end