function root = task_104 ()

  f = @(x) x.^2-x;
  df = @(x) 2*x-1;

  xAxis = [0:0.1:10];
  plot(xAxis, f(xAxis));
  set(gca,'xAxisLocation','origin');
  title('Roots finding using Newton Rapson');
  xlabel('x');
  ylabel('f(x)');
  hold on;

  x0 = 3;
  tolerence = 1e-6;
  roots = [];
  x = [0:0.1:5];


  while abs(f(x0)) > tolerence
    roots = [roots, x0];
    x1 = x0 - f(x0)/df(x0);
    slp = @(x) (f(x0)*(x1-x))/(x1-x0)
    plot(x,slp(x));
    plot(x0,f(x0),'gx');
    pause(1);
    x0=x1;
  end
  fprintf('The root is: %d\n',x0);
  plot(roots, f(roots),'gx');
  plot(x0,f(x0),'rx');

endfunction
