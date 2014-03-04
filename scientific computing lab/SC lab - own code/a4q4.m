function [] = a4q4()
syms t;
f = (-0.011*(t^3)) - (0.2*t*t) + (2.4*t) + 2;
s = -18;
a = 0;
b = 10;
int = a:0.1:b;

for i=2:length(int)-1
    %central scheme
    cd(i-1) = (subs(f, int(i-1)) - subs(f, int(i+1)))/(int(i+1)-int(i-1));
end
integ_mid = s;
for i=1:length(int)-1
    mid = (int(i) + int(i+1))/2;
    integ_mid = integ_mid + subs(f, mid)*(int(i+1)-int(i));
end

integ_mid
cd

end