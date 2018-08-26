# Author: Amit Nandi
# Dated : 16th Sept, 2015

sim.pi <- function(iterations) {

    # Generate two vectors for random points in unit circle
    x.pos <- runif(iterations, min=-1, max=1)
    y.pos <- runif(iterations, min=-1, max=1)
    # Test if draws are inside the unit circle
    draw.pos <- ifelse(x.pos^2 + y.pos^2 <= 1, TRUE, FALSE)
    draws.in <- length(which(draw.pos == TRUE))

    # Estimate Pi
    return(4*(draws.in/iterations))

}
print(sim.pi(10000))
