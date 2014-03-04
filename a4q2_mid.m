function [] = a4q2_mid()
syms t;
f = t^4;
a = 0.5
b = 1
mid = (a+b)/2;

integ_mid = subs(f, mid)*(b-a);
integ_mid

end