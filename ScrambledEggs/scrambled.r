# Author : Amit Nandi
# Dated :  Oct 10, 2015

library(misc3d)

library(rgl)



surface <- function(e,g,H)

{
	e^2+g^2+H^2
	return(e^2+g^2+H^2)
}


N <- 50 # Initial Seed
A <- rexp(N) 
B <- rexp(2*N)
H <- runif(N)
H1 <- runif(2*N)
par(mfrow=c(1,1))
plot(H,A,col="red",ylab = "e & g")
points(H1,B,col="green")
contour3d(surface,3,A,B,H,color='red',color2 = 'green',fill = F)
