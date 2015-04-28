function [y] = myarctan(x)
y = single(0);
for i = 8388600:-1:1
    y = y + (-1)^(i-1) * (x.^(2*i-1))/(2*i-1);
end 
return