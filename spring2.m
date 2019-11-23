k = 0.9;
m = 1.0;
b = 0.2;

dt = 0.01;
THETA_0 = 2;
THETA_DOT_0 = 0.0;
ITERS = 10000;

thetas = zeros(ITERS, 1);
theta = THETA_0
theta_dot = THETA_DOT_0
for i = 1:ITERS
  t = (i - 1) * dt;
  
  theta_ddot = -k/m*theta -b/m*theta_dot;
  
  theta = theta + (theta_dot * dt);
  theta_dot = theta_dot + (theta_ddot * dt);
  
  thetas(i) = theta;
endfor
plot(thetas);

    