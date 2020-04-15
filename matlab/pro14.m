%%%%%matlab code for the solution of module 2
xleft = -3;
xright = 4;
N = 20; % number of nodes
x = linspace(xleft,xright,N);
x = x'; 
dx = (xright-xleft)/(N-1);
yleft = -3;
yright = 2;

%M here is the matrix which when multiplied by the vector y approximates y''(x) numeriically for all the internal nodes
M = (diag(-2*ones(N,1),0) + diag(ones(N-1,1),-1) + diag(ones(N-1,1),1))/dx^2;

%updating the matrix to treat the boundaries differently
M(1,:) = [1 , zeros(1,N-1)];
M(end,:) = [zeros(1,N-1) , 1];

%The RMS vector (dont forget to sort out the boundaries separately).
b = x.*sin(x);
b(1) = yleft;
b(end) = yright;

%solve
y = M\b;

%plot of the solution
plot(x, y);
% Labels 
xlabel('-3<x<4')
ylabel('Solution Y')