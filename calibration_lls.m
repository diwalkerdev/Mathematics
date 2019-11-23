# One axis gain parameter.
disp('One axis')
y = [9.81];
X = [9.7];

rank(X)
B = inv(X'*X)*X'*y
X * B

# 3 Axis gain parameter.
disp('Three Axis')
y = [9.81; 
     9.81; 
     9.81];
X = [9.7 0.0 0.0;  
     0.0 9.9 0.0;
     0.0 0.0 9.6];
rank(X)
B = inv(X'*X)*X'*y
X*B

# 1 axis gain and bias.
disp('One axis gain and bias.')
y = [9.8;
     0
     0]

X = [10  1;
     0.1 1
     0.1 1]
     
rank(X)
linv = inv(X'*X)*X'
B = linv*y
X * B
B

# 2 axis gain and bias.
disp('Two axis gain and bias.')
y = [9.8 0.0;
     0.0 9.8
     0.0 0.0]

X1 = [10  1;
      0.1 1
      0.1 1]
      
X2 = [ 9.6 1;
      -0.1 1;
      -0.1 1]
      
rank(X)
linv = inv(X'*X)*X'
B = linv*y
X * B
B

##g = 9.81;
##y = [g 0 0;
##     0 g 0;
##     0 0 g];
##        
##b1 =  0.1;
##b2 =  0.2;
##b3 = -0.1;
##x = [y(:,1)+b1 y(:,2)+b2 y(:,3)+b3];

% Step 1: define equations underlying model.
% 9.81 = B1*m1
% 9.81 = B2*m2
% 9.81 = B3*m3