%initial x value
x0 = 0.5;

% initializing the function f(x) and f'(x)
f = @(x) (x^2*(10-x))/(10^7*(1-x)*(2-x)^2)-1;
df = @(x) ((10^7*(1-x)*(2-x)^2)*(2*x*(10-x)-x^2)+(x^2*(10-x))*(10^7*((2-x)^2+(1-x)*2*(2-x))))/(10^7*(1-x)*(2-x)^2)^2

%Running an infinite loop until the conditions are met
while(1)
%  respecting the discontinuities and 
   if(x0==1||x0==2)
     x0 = x0+0.005;
     continue;
   end
%   applying NR method
   xn = x0-f(x0)/df(x0)
% Applying the three signifuicant figures condition
   if(abs(f(xn)-f(x0))>=0.0001)
      break;
   end
% now assigning xn value to x0
   x0=xn;
end
% Printing the final answer
xn
