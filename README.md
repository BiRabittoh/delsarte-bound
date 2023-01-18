# A Delsarte Bound calculator in MATLAB

The `delsarte(n, d)` function returns an upper bound for $A_2(n, d)$: the maximum number of binary code-words of length $n$ and having Hamming distance $d$ between each other.

The obtained bound can often be improved (see [this table](https://www.win.tue.nl/~aeb/codes/binary-1.html)), with further observations and only for special cases, but this function can compute a valid bound for any value of $n$ and $d$.