function r = k(t, n, i)
    r = 0;
    for j = 0:min(i, t)
        r = r + ((-1)^j * comb(i, j) * comb(n - i, t - j));
    end
end
