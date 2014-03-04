limit=1000;
sum=0;
for k=1:limit
    sum=sum+simulate(k);
end
result=sum/limit