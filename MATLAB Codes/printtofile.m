function[] = printtofile()
x = 1:0.1:10;
y = sin(x);

plot(x,y, 'g');
%legend = legend('ACtual');
grid on;
print -dpng test.png