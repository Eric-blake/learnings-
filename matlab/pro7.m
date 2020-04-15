v = 2.8

MaxNumQuarters = 30;

Xa = zeros(MaxNumQuarters,1);
Xb = zeros(MaxNumQuarters,1);

Xa(1) = rand;
Xb(1) = Xa(1)*1.05;

for t = 1 : MaxNumQuarters-1
  Xa(t+1) = R(Xa(t), v) * Xa(t);
  Xb(t+1) = R(Xb(t), v) * Xb(t);
endfor

plot(Xa, 'r.-')
hold on;
plot(Xb, 'b.-')

hold off;