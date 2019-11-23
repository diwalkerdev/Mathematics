a = [2 5]'
b = [4 1]'

c = b - a;
# dot product between a and p is 0.
# aT * (b - a*beta) = 0
# distribute:
#   aT * b - aT*a*beta = 0
# rearrange
#   beta = -(aT * b) / -(aT * a)
#   beta =  (aT * b) /  (aT * a)
# where aT * a is a magnitude.

beta = (a'*b) / (a'*a)

figure(1); clf; 
plot(b(1), b(2), 'ko', 'markerfacecolor', 'm', 'markersize', 10);

hold on;

plot([0 a(1)], [0 a(2)], 'b', 'linew', 3)
plot([0 c(1)], [0 c(2)], 'r--', 'linew', 3)
plot([a(1) a(1)+c(1)], [a(2) a(2)+c(2)], 'r--', 'linew', 3)

# plot([b(1) beta*a(1)], [b(2) beta*a(2)], 'r--', 'linew', 3)
axis([-5 5 -5 5]);
grid on;