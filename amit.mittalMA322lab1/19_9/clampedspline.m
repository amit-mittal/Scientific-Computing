function [y]=clampedspline(x,f,n,r,s)

for i=1:n
    if(i<n)
         h(i,1)=x(i+1,1)-x(i,1);
    end
   if(i==1||i==n)
      d(1,1)=r;
      d(n,1)=s;
   else
   d(i,1)=((f(x(i+1,1))-f(x(i,1)))/h(i,1)) + ((f(x(i,1))-f(x(i-1,1)))/h(i-1,1));
   end
end

for i=1:n
   if(i==1)
       a(1,1)=h(1,1)/3;
       a(1,2)=h(1,1)/6;
   else if(i==n)
          a(n,i)=h(i-1)/3;
           a(n,i-1)=h(i-1)/6;
       else
           a(i,i-1)=h(i-1)/6;
           a(i,i)=(h(i)-h(i-1))/3;
           a(i,i+1)=h(i)/6;
       end
   end
   
end


m=a\d;

disp(m);

a=0.3102;

c=f(0.3)/h(1,1)-m(1,1)*h(1,1)/6;
d=f(0.32)/h(1,1)-m(2,1)*h(2,1)/6;
y=(1/6*h(1,1))*(((a-0.3)^3)*m(2,1)+((0.32-a)^3)*m(1,1));