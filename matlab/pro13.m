%%%%%matlab code for the solution of module 2
xleft = 1;
xright = 5;
N = 100;
x = linspace(xleft,xright,N);
x = x'; 
dx = (xright-xleft)/(N-1);
yleft = 1;
yright = 2;

%M here is the matrix which when multiplied by the vector y approximates y''(x) nmeriically for all the internal nodes
M = (diag(-2*ones(N,1),0) + diag(ones(N-1,1),-1) + diag(ones(N-1,1),1))/dx^2;

%updating the matrix to treat the boundaries differently
M(1,:) = [1 , zeros(1,N-1)];
M(end,:) = [zeros(1,N-1) , 1];

%The RMS vector (dont forget to sort out the boundaries separately).
b = x.^2.*cos(x);
b(1) = yleft;
b(end) = yright;

%solve
y = M\b;