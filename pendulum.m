g = 9.81;
L = 2.0;
mu = 0.1;
dt = 0.01;
THETA_0 = pi / 3.0;
THETA_DOT_0 = 0.0;
ITERS = 10000;

thetas = zeros(ITERS, 1);
theta = THETA_0
theta_dot = THETA_DOT_0
for i = 1:ITERS
  t = (i - 1) * dt;
  
  theta_ddot = -mu * theta_dot -(g/L)*sin(theta);
  
  theta = theta + (theta_dot * dt);
  theta_dot = theta_dot + (theta_ddot * dt);
  
  thetas(i) = theta;
endfor
plot(thetas);

    