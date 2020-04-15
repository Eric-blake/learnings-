pi = 3.14;
f = @(x) 4-x*sin(x*180/pi);
g = @(x) log(x)+1;
x = [6:9];
r = 1;
% for any value of x between 6 to 9 log(x) is always greater than 0
sol = zeros(1,length(x));
phi = zeros(1,length(x));
for i = 1 : length(x)
   sol(1,i) = f(x(i));
endfor
temp = min(sol);
phi1 = 0;
while(abs(temp - phi) != 0)
 for i =1 : length(x)
   phi(i) = f(x(i))- r/g(x(i));
 end
 phi1 = min(phi);
 r++;
end
r = r-1