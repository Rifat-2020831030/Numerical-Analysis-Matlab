function root = task_102(a, b)
f = @(x) x.^2-4;
x = [-10:1:10];

plot(x,f(x));
set(gca,'xAxisLocation','origin');
hold on;
a=0;
b=5;
c = (a+b)/2;
y_values = [];
tolerence = 1e-6;

while abs(f(c)) > tolerence
  if f(a)*f(c) < 0
    b = c;
  else
    a = c;
  end
  c= (a+b)/2;
  y_values = [y_values, x];
end

fprintf('The root is : %d\n',c);

for i = 1:length(y_values)
  plot(y_values(i),0,'or');
  pause(1);

plot(c,f(c),'or');
end



