function [x,flag] = SolveGeneralSOR(A,y,x0,beta,TOL)
D = diag(diag(A));
L = tril(A)-D;
U = triu(A)-D;

x_k = x0;
flag = 0;
for j = 1:150
   x_prev = x_k;
   x_k =inv((beta*D) + L) *(y - (U + (1 - beta)*D)*x_prev);   
   r = (y - A*x_k);
   r = sqrt(sum(r.^2));
   
   if (r>TOL)
       flag = 1;
       break;
   end
   
end
x = x_k;

