function x = hossain_cg(A, b, x)
% made according to the provided algorithm
    r = b - A * x;
    p = r;
    rho = r' * r;
max_iter=2000;
  for i = 1:max_iter
a = A * p;
alpha = rho / (p' * a);
x= x + alpha * p;
r = r - alpha * a;
rho_new = r' * r;
        if sqrt(rho_new) < 1e-7  break; end
       p = r + (rho_new / rho) * p;
        rho = rho_new;
  end
end