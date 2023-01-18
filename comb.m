function r = comb(n, k)
    r = gamma(n + 1) / (gamma(k + 1) * gamma(n - k + 1)); 
end
