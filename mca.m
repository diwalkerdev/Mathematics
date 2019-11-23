##function mca(A)
##  detA = det(A);
##  assert(detA != 0, "Matrix must be full rank");
##  
##  minA = minors(A);
##endfunction

A = rand(4);

m = size(A, 1)  # Get rows
n = size(A, 2)  # Get cols

% assert(m == n, 'Matrix must be square');

M = zeros(m, n);

for h = 1:m
  for i = 1:n
    rows = [1:h-1 h+1:m];
    cols = [1:i-1 i+1:n];
    
    detSubA = A(rows, cols)
    
    M(h,i) = det(detSubA);
  endfor
endfor
  
C = zeros(m,n);
for h = 1:m
  for i = 1:n
    C(h, i) = (-1)^(h + i);
  endfor
endfor

C = M.*C;

Adj = C'.*(1/det(A))
inv(A)

