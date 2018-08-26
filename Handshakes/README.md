## Counting people from handshakes
A special interdisciplinary meeting is organized where a few computer scientists and some biologists are invited. First, the two groups meet separately: Each person shakes hands with every other
person within only her/his own group. In otherwords, computer scientists shake hands with computer scientists, while biologists shake hands with biologists other. There are a total of 102 such
handshakes. After that, all computer scientists shake hands with all biologists. There are a total of 108 such handshakes across the two groups.

How many computer scientists attended the meeting?

## Solutions

Let, consider Number of Comp. Sci and Biologists are `m` and `n` respectively.

In mathematical expressing for in group handshakes will be :

`\binom{n}{2} + \binom{m}{2} = 102 --- (1)`

In mathematical expressing for across the group handshakes will be :

`mn = 108 ---(2)`

Now, by solving both the equations we get:

`(n^4)-(n^3)-(204(n^2))-(108n)+(108^2)=0`

Solving for `n` will have the answer to our problem. 


