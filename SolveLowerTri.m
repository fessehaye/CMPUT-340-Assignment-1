function [x,flag] = SolveLowerTri(L,y)
    singul = det(L);
    if(singul ~= 0)
        flag = 0;
        n = length( y);
        x = zeros( n,1);
        l = diag(L);

        for i=1:n
            x(i) = ( y(i) - L(i, :)*x )/l(i);
        end

    else
            if(rank([L,y])==rank(L))
                flag = 1;
                x=zeros(1,1);
            else
                flag = -1;
                x=zeros(1,1);
            end
    end
