#Author : Amit Nandi
#Dated : 30th Oct, 2015

gcd <- function(a,b) #Function of GCD of any two numbers
{
	counter <- 1       #Initialization of number of iteration
	while(b!=0)     
	{
		t <- b
		b <- a%%b
		a <- t
		counter <- counter+1 #Counting number of iteration
	}
	return(c(a,counter)) 
}

coprime_mat <- function(n) #Co-Prime matrix formation function
{
	m <- matrix(0,n+1,n+1) #Initialization of matrix
	for(k in 1:(n+1))
	{
		for(l in 1:(n+1))
		{
			m[k,l] <- gcd(k-1,l-1)[1] #Formation of matrix of GCD of numbers using loop 
		}
	}
	coprime_pairs <- ifelse(m>1,0,m)#Replaced non co-prime matrix with zero.
	return(coprime_pairs)
}

iterations<-function(n) #Iteration function to calculate number of iteration
{
	iteration <- matrix(0,n+1,n+1)
	for(k in 1:(n+1))
	{
		for(l in 1:(n+1))
		{
			if(gcd(k-1,l-1)[1]==1)
			{
				iteration[k,l] <- gcd(k-1,l-1)[2] 
			}
		}
	}
	return(iteration)
}


coprime_frac <- function(n) #Function for Co-Prime fraction
{
	f<-c()
	for(i in 1:n)
	{
		f[i]<-sum(coprime_mat(i))/(i+1)^2 
	}
	return(f)
}



#Analysis part by taking 100 numbers
pdf("Graphics with Grand Daddy.pdf")
n <- 100 
par(mfrow=c(1,1))
image(z=coprime_mat(n),col=gray((0:32)/32),axes=F,main="Graphis with Grand Daddy \n (Black:non-coprime pairs; White:co-prime pairs)",xlab="Column ",ylab="Row")
image(z=iterations(n),col=rainbow(7),axes=F, main="Iterations",xlab="column",ylab="Row")
plot(1:n,coprime_frac(n),type='l',xlab="Integer",ylab="Co-Prime Fraction",main="Plot of Co-Prime Fraction")
abline(h=6/pi^2)
dev.off()
