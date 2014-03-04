function[output]=calculate(x,y,a,b)

if(b-a==1)
    output=(y(1,b)-y(1,a))/(x(1,b)-x(1,a))
    return;
end
    output=(calculate(x,y,a+1,b)-calculate(x,y,a,b-1))/(x(1,b)-x(1,a))
    return;
end
