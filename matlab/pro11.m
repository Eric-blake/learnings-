%given a0 value is assigned to a
a = 5.59*10^-11;
% probaboility function
p = @(r) (4/a^3)*r^2*exp(-2*r/a);
% assigning r value
r = [-100:1:100];
sol = zeros(length(r));
for i=1:length(r)
   sol(i) = p(r(i));
endfor
plot(r,sol);
xlabel('R')
ylabel('P(r)')