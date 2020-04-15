%initial x value
x0 = 0.5;
xn = 0;
% initializing the function f(x) and f'(x)
f = @(x) (x^2*(10-x))/(10^7*(1-x)*(2-x)^2)-1;

%Running an infinite loop until the conditions are met
while(1)
%  respecting the discontinuities and adding the step size
   if(x0==1||x0==2)
     xn = x0 + 0.005;
     continue;
   end
   xn = x0 + 0.005;
   if(abs(f(xn)-f(x0))<=0.0001)
     break;
   end
% Applying the three signifuicant figures condition
   
% now assigning xn value to x0

   x0=xn;
end
% Printing the final answer
xn