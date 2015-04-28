function [x,flag] = SolveGeneralLU(A,y)
n = length(A);
U = A;
L = eye(n);

if(det(A)~= 0)
    
    flag = 0;
    
    for i=1:n
        L(i+1:n,i)=U(i+1:n,i)/U(i,i);
        for j=i+1:n
            U(j,:)=U(j,:)-L(j,i)*U(i,:);
        end
    end
    
    n = length( y );
    c = zeros( n, 1 );
    l = diag(L);
    x = zeros( n, 1 );
    u = diag(U);
    
    for i=1:n
        c(i) = ( y(i) - L(i, :)*c )/l(i);
    end
    for i=n:-1:1
        x(i) = ( c(i) - U(i, :)*x )/u(i);
    end

else
    flag = 1;
    x = zeros(1);
end