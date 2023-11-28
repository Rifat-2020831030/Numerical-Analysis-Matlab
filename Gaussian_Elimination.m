function [a1, a2, a3, v_at_t6] = Gaussian_eli()
    % Given data
    t = [5; 8; 12];
    v = [106.8; 177.2; 279.2];

    A = [t.^2, t, ones(size(t))];
    B = v;

    % Augment the matrix A with the column vector B
    augmented_matrix = [A, B];

    n = length(B);
    for k = 1:n-1
        for i = k+1:n
            factor = augmented_matrix(i, k) / augmented_matrix(k, k);
            augmented_matrix(i, k:n+1) = augmented_matrix(i, k:n+1) - factor * augmented_matrix(k, k:n+1);
        end
    end

    % Back-substitution
    x = zeros(n, 1);
    x(n) = augmented_matrix(n, n+1) / augmented_matrix(n, n);
    for i = n-1:-1:1
        x(i) = (augmented_matrix(i, n+1) - augmented_matrix(i, i+1:n) * x(i+1:n)) / augmented_matrix(i, i);
    end

    a1 = x(1);
    a2 = x(2);
    a3 = x(3);
    %Ans of Question 1
    disp('Coefficients:');
    disp(['a1 = ', num2str(a1)]);
    disp(['a2 = ', num2str(a2)]);
    disp(['a3 = ', num2str(a3)]);

    %Question 2
    t_val = 6;
    v_at_t6 = a1 * t_val^2 + a2 * t_val + a3;

    % Displaying the coefficients and velocity at t = 6 seconds
    disp(['Velocity at t = 6 seconds: ', num2str(v_at_t6), ' m/s']);
end

