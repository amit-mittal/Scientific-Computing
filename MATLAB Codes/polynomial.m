function y=polynomial()
P = [0.02957206 -0.12895295 0.28249626 -0.48907554 0.99910735 0];
x = -0.1:0.1:1.1;
f = @(x) log(1+x);
Approx = polyval(P, x);
Exact = f(x);
Error = abs(Approx-Exact);

for i=1:length(x)
  fprintf('%f\t%f\t%f\n', Approx(i), Exact(i), Error(i));  
end