## Kaprekar’s 6174

In 1949, [D. R. Kaprekar](https://en.wikipedia.org/wiki/D._R._Kaprekar) discovered a procedure, now known as the [Kaprekar routine](https://en.wikipedia.org/wiki/D._R._Kaprekar), which quickly takes a 4-decimal-digit number (which has at least two distinct digits) to the number 6174 in at most 7 steps of his procedure. Numbers of the form `dddd` all go to `0` in one step.

One goal of this exercise is to produce a plot similar to the one above. Another goal is to computationally characterize the cyclic patterns produced by Kaprekar routine. That is, assume that this routine produces, starting from any integer, a sequence of numbers that goes into a cyclic pattern. Fix the base `b` (say, to `10`), number of digits `k` (say, to `4`). Run the Kaprekar routine for each integer between `0` and <img src="https://latex.codecogs.com/gif.latex?b^k&space;-&space;1" title="b^k - 1" />. Find out how many distinct cyclic patterns are produced over this set of starting values.
