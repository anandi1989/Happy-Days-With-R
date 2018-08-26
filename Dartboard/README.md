## <img src="https://latex.codecogs.com/gif.latex?\pi" title="\pi" /> by Dartboard

The celebrated number <img src="https://latex.codecogs.com/gif.latex?\pi" title="\pi" /> can be estimated through darts thrown at random at a simplistic dartboard. Simulate the experiment of throwing N random darts at this dartboard so that they fill up the dartboard 
with uniform density. Using this, estimate the value of <img src="https://latex.codecogs.com/gif.latex?\pi" title="\pi" />.

## Solutions

Consider a square dartboard with a circle inscribed inside. Assume, dartboard each corner is represented by `(-1,-1), (-1,+1), (+1,+1), (-1,-1)` 
and inscribed circle is the unit circle <img src="https://latex.codecogs.com/gif.latex?x^2&plus;y^2&space;=&space;1" title="x^2+y^2 = 1" />

Now, random dart hit can be simulated using random uniform random number for `x` and `y` respectively between `(-1, +1)`

If `N` number of dart is thrown at random so that dart points fill up the board with uniform density, then estimation equations will be as below: 

<img src="https://latex.codecogs.com/gif.latex?\hat{\pi}&space;=&space;4N_o/N" title="\hat{\pi} = 4N_o/N" />

where, 

<img src="https://latex.codecogs.com/gif.latex?N_o" title="N_o" /> are the count of points that satisfy <img src="https://latex.codecogs.com/gif.latex?x^2&plus;y^2&space;<=1" title="x^2+y^2 <=1" /> 


