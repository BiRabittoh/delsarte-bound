function r = delsarte(n, d)
    % https://www.win.tue.nl/~aeb/codes/binary-1.html

    if d > n
        r = 1;
        return
    end

    if 1.5 * d > n
        r = 2;
        return
    end
    
    m = n - d + 1;

    % populate the objective function
    c = -ones(1, m);
    
    A = zeros(n, m);
    b = zeros(1, n);
    for t = 1:n
        % populate the A matrix
        for j = 1:m
            i = n - m + j;
            A(t, j) = - k(t, n, i);
        end
        % populate the b vector
        b(1, t) = k(t, n, 0);
    end

    % populate non-negativity constraints
    lb = zeros(1, m);
    
    % fill other parameters
    Aeq = [];
    beq = [];

    % find an optimal solution
    s = sym(linprog(c, A, b, Aeq, beq, lb));

    % add the value of x_0 and round the result
    r = fix(sum(s) + 1);
end