function[output]=a4q2a()
syms t;
f=t^4;
a=0.5;
b=1;
n=13;
int=(b-a)/13;
integ_mid=0;
integ_trapezoid=0;
integ_simp=0;
for i=1:13
    integ_mid= integ_mid + (int)*subs(f,(a+a+(i*int)+((i-1)*int))/2);
    integ_trapezoid= integ_trapezoid + (int)*0.5*(subs(f,a+(i*int))+subs(f,a+((i-1)*int)));
    integ_simp=integ_simp + (int/6)*(subs(f,a+(i*int))+subs(f,a+((i-1)*int))+(4*subs(f,a+(i+i-1)*(int/2))));
end
integ_mid
integ_trapezoid
integ_simp
end