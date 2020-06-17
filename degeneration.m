%%degeneration

n = 24;
n1 = factorial(24);
ans1 =0;
for i=0:24
    ans1 = ans1 + (-1)^i/factorial(i);
end
ans1 = ans1*n1;
fprintf('The result:\t%35.0f\n',ans1);