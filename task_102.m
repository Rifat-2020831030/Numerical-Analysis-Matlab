function root = task_102(a, b)
f = @(x) 4*log(x) - x;
x = [1:0.1:10];

plot(x,f(x));
set(gca,'xAxisLocation','origin');
title('Roots finding using Bisection Method');
xlabel('x');
ylabel('f(x)');
hold on;

a=0;
b=3;
c = (a+b)/2;
roots = [];
tolerence = 1e-6;

while abs(f(c)) > tolerence
  if f(a)*f(c) < 0
    b = c;
  else
    a = c;
  end
  c= (a+b)/2;
  roots = [roots; c];
end

fprintf('The root is : %d\n',c);

plot(roots, f(roots),'ro');

plot(c,f(c),'gx');
end



