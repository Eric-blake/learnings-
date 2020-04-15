[Q,R] = qr(randn(5));
D = diag([3, -1, 0.5, 2, -4]);
A = Q*D*Q';
B = A - 0.25*eye(5);
C = inv(B);

q = ones(5,1); s = 1;
for j=1:15
  q_old = q;
  q_new  = C*q_old;
  [m, ind] = max(abs(q_new));
  s = q(ind(1));
  q = q_new/s;
  
  
endfor;

