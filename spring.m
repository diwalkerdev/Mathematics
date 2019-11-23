m = 1.0;  # Mass - 1 kg
k = 0.9;  # Spring - 1 N/m

b = 0.2;  # Friction - Ns/m

A = [0 1; -k/m -b/m]
B = [0; 1/m]
C = [1 0]

x = [0 0]'
xdot = [0 0]'
y = [0 0]'

n = 100;
y = zeros(1, n);

# Create step response.
u = zeros(1, n);
u(1) = 1;

O = zeros(n, 2);
x0 = x;

for t = 1:n
  xdot = A*x + B*u(t);
  # Could C be a column vector, which makes y a vector containing all the state outputs?
  yt = C*x;
  y(t) = yt;
  
  O(t,:) = C*A^(t-1);
  
  x = xdot;
endfor

rank(O)

# plot(1:n, y);