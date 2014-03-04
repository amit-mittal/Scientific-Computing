function[output]=a5q1()
syms t
f=t^4;
a=0.5;
b=1;
n=4;
x=a:(b-a)/n:b;

num_g=prod(t-x);
ans=0;

for i=1:length(x)
    num=num_g/(t-x(i));
    den=subs(num,x(i));
    frac=num/den;
    ans=ans+int(frac,a,b)*subs(f,x(i));
end
    ans
end