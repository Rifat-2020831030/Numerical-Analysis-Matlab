function A = task_101(x,y)
  [r1 c1] = size(x);
  [r2 c2] = size(y);
  a = max(max(x));
  b = max(max(y));
  fprintf("Max value in A: %d\n",a);
  if c1 != r2
    fprintf("The input matrix cannot be multiplayed\n")
  else
    A = x*y;
  end
end


