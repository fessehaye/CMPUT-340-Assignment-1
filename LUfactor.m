function [L,U,flag] = LUfactor(A)

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
    
else
    flag = 1;
    L = zeros(1);
    U = zeros(1);
end
