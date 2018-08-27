INT2DIGITS <- function(n,b)          #Function to create Integer into Digits
{
  d <- c()
  while(n!=0)
  {
    d <- append(d,as.integer(n%%b))
    n <- as.integer(n/b)
  }
  return(d)
}

DIGITS2INT <- function(d,b)     #Function to create Digits into Integers 
{
  n <- 0
  
  for(i in 1:length(d))
  {
    n <- n+d[i]*b^(i-1)
  }
return(n)
}

KAPREKAR.STEP <- function(n,b,k)  #Function to calculate Kaprekar Steps
{
  d <- sort(INT2DIGITS(n,b),decreasing = T)
  if(length(d)!=k)
  {
    for(i in length(d)+1:(k-length(d)))
     d[i]=0
  }
  if(abs((DIGITS2INT(d,b)-DIGITS2INT(rev(d),b)))==0)
    return(n)
  else
  return (abs((DIGITS2INT(d,b)-DIGITS2INT(rev(d),b))))
  
}

KAPREKAR.ROUTINE <- function(n,b,k) #Function to calculate Kaprekar Routine.
{
  m <- c()
  while(length( which(m==n))==0)
  {
    m <- append(m,n)
    n <- KAPREKAR.STEP(n,b,k)
  }
  
  m <- append(m,n)
  
  return(m)
}
mat <- matrix(0,100,100)
for(i in 0:99)
{
  for(j in 0:99)
  {
    mat[i+1,j+1] <- length(KAPREKAR.ROUTINE((i+j*100),b=10,k=4))
  }
}
image(0:99,0:99,z=mat,col=heat.colors(12),axes=T,main="Kaprekar's 6174",xlab="n div 10^2 ",ylab="n mod 10^2")
#Test
b <- 10
k <- 4
cycle <- c()
vect <- 1:(b^k-1)
for(i in 1:length(vect))
{
  l <- KAPREKAR.ROUTINE(vect[i],b,k)
  cycle <- rbind(cycle,l)
}
image(cycle)
