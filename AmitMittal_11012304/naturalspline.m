function [y]=naturalspline(x,f,n)

for i=1:n
    if(i<n)
         h(i,1)=x(i+1,1)-x(i,1);
    end
   if(i==1||i==n)
      d(i,1)=0; 
   else
   d(i,1)=((f(x(i+1,1))-f(x(i,1)))/h(i,1)) + ((f(x(i,1))-f(x(i-1,1)))/h(i-1,1));
   end
end

for i=1:n
   if(i==1)
       a(i,i)=1;
   else if(i==n)
           a(i,i)=1;
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

y=y+c*(0.32-a)+d*(a-0.3);


%We get value of sin(0.3102) by interpolation is 0.2863.
%Error is 0.0189.
    