function root = task_103()
f = @(x) 4*log(x) - x;

a= 1;
b= 6;

c= (a*f(b)-b*f(a))/(f(b)-f(a));
roots = [];
tolerence= 1e-6;

while abs(f(c)) > tolerence
  if f(a)*f(c) < 0
    b = c;
  else
    a = c;
  roots = [roots; c];
  c = (a*f(b) - b*f(a))/(f(b)-f(a))
  end
end

x = linspace(0,3,100);
plot(x, f(x));
set(gca, 'xAxisLocation', 'origin');
title('Roots finding using False Position');
xlabel('x');
ylabel('f(x)');
hold on;

plot(roots, f(roots),'gx');
plot(c, f(c), 'rx');

endfunction
