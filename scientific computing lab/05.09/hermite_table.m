x=[0 3 5 8 13];
y=[0 225 383 623 993];
y1=[75 77 80 74 72];
%x=[1 3/2 0 2];
%y=[3 13/4 3 5/3];
n1=size(x);
n=n1(2);
x1=[];
f=zeros(2*n,2*n);
l=0;
for k=1:n
        x1(2*k)=x(k);
        x1(2*k-1)=x(k);
end
%x1
for k=1:2*n
    %fprintf('k=%d\n',k);
    for j=1:(2*n)+1-k
        %fprintf('j=%d l=%d\n',j,l);
        if(k==1)
            if(l==0)
            	f(k,j)=y((j+1)/2);
                l=1;
                %fprintf('fg1  l=%d\n',l);
            else
            	f(k,j)=y(j/2);
                l=0;
                %fprintf('fg2 l=%d\n',l);
            end
        elseif(k==2)
            if(l==0)
            	f(k,j)=y1((j+1)/2);
                l=1;
                %fprintf('fg1  l=%d f(%d,%d)=%f\n',l,k,j,f(k,j));
            else
            	f(k,j)=(f(k-1,j+1)-f(k-1,j))/(x1(j+k-1)-x1(j));
                l=0;
                %fprintf('fg2 l=%d f(%d,%d)=%f\n',l,k,j,f(k,j));
            end
        else
            f(k,j)=(f(k-1,j+1)-f(k-1,j))/(x1(j+k-1)-x1(j));
        end
    end
end
f
p=0;
syms z;
frac=1;
for i=1:n
    if(i>1)
        frac=frac*(z-x(i-1));
    end
    p=p+(frac*f(i,1));
end;
simplify(p)
p1=diff(p);
subs(p,z,10)
x2=0:.01:13;
y3=subs(p1,z,x2);
plot(x2,y3);
%x1=min(x):(max(x)-min(x))/1000:max(x);
%w=subs(p,z,x1);
%figure(ceil(100000*rand()));
%plot(x,y,x1,w);
%h=legend('original function','interpolation',2,'Location','NorthWest');
%grid on;