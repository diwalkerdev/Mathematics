# Notation C(A) - the column space of A.

# Defintion: the vector subspace **spanned by the columns of A**.

# |* & %|
# |* & %|
# |* & %|

# Formal definition:
# ------------------
# C(A) = {B1a1 + ... + Bnan }; B E R
# The column space of A is defined as the set of vectors that can be obtained by
# taking a linear combination of all the columns of A. Where B is a member of 
# the real number field.

# or span({a1, ..., an})

v1 = randn(3,1);
v2 = randn(3,1);
figure;
hold on;
plot3([0 v1(1)],[0 v1(2)],[0 v1(3)],'r','linewidth',3);
plot3([0 v2(1)],[0 v2(2)],[0 v2(3)],'b','linewidth',3);
ezmesh(...
  @(s,t)v1(1)*s+v2(1)*t, ...
  @(s,t)v1(2)*s+v2(2)*t, ...
  @(s,t)v1(3)*s+v2(3)*t, ...
  [-10 10 -10 10], 10);
grid on;
rotate3d on;