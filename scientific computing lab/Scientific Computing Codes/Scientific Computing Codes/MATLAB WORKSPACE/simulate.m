function [count] = simulate(k)
state=1;
count=0;
while state~=8
    if state==1
        r=rand(1);
        if r<(1/3)
            state=2;
        elseif r<(2/3)
            state=3;
        else
            state=4;
        end
        count=count+1;
    elseif state==2
        r=rand(1);
        if r<(1/3)
            state=1;
        elseif r<(2/3)
            state=5;
        else
            state=6;
        end
        count=count+1;
    elseif state==3
        r=rand(1);
        if r<(1/3)
            state=1;
        elseif r<(2/3)
            state=5;
        else
            state=7;
        end
        count=count+1;
    elseif state==4
        r=rand(1);
        if r<(1/3)
            state=1;
        elseif r<(2/3)
            state=6;
        else
            state=7;
        end
        count=count+1;
    elseif state==5
        r=rand(1);
        if r<(1/3)
            state=2;
        elseif r<(2/3)
            state=3;
        else
            state=8;
        end
        count=count+1;
    elseif state==6
        r=rand(1);
        if r<(1/3)
            state=2;
        elseif r<(2/3)
            state=4;
        else
            state=8;
        end
        count=count+1;
    else
        r=rand(1);
        if r<(1/3)
            state=4;
        elseif r<(2/3)
            state=3;
        else
            state=8;
        end
        count=count+1;
    end
end
end