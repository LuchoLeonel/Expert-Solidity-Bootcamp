1. Why are negative numbers more expensive to store than positive numbers ?
Because negative number has an f instead of a 0 in the unused bits.

2. Test the following statements in Remix, which is cheaper and why ?
Assume that the denominator can never be zero.
1.
    result = numerator / demoninator;
2.
    assembly {
        result := div(numerator, demoninator)
    }

The cheaper is the second because it doesnt check if the denominator is 0.