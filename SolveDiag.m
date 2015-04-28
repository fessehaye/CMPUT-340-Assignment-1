function [x,flag] = SolveDiag(d,y)
    singul = prod(d);
    if(singul ~= 0)
        flag = 0;
        x=y./d;
    else
            if(rank([diag(d),y])==rank(diag(d)))
                flag = 1;
                x=zeros(1,1);
            else
                flag = -1;
                x=zeros(1,1);
            end
    end
    