function [] = a4q2a()
syms t;
f = t^4;
a = 0.5;
b = 1;
n = 13;
int = a:(b-a)/n:b;

integ_mid = 0;
integ_trap = 0;
integ_simp_third = 0;
for i=1:length(int)-1
    mid = (int(i) + int(i+1))/2;
    integ_mid = integ_mid + subs(f, mid)*(int(i+1)-int(i));
    integ_trap = integ_trap + ((subs(f, int(i)) + subs(f, int(i+1)))/2)*(int(i+1)-int(i));
    integ_simp_third = integ_simp_third + (((int(i+1)-int(i))/6)*(subs(f, int(i)) + subs(f, int(i+1)) + (4*subs(f, (int(i)+int(i+1))/2))));
end

integ_mid
integ_trap
integ_simp_third

end