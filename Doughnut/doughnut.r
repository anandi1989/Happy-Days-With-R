# Author : Amit Nandi
# Dated : Nov 5, 2015

holy<-function(n,a)
{
	m<-matrix(0,n,n)
	j<-1
	for(i in n:1)
	{
		 m[1,j]<--(a[i]/a[n+1])
		 j<-j+1 

	}

	for(i in 1:n-1)
	{
		m[i+1,i]<-1
	}

	ei<-eigen(m)$values

	return(ei)

}

bits<=function(n)
{
	t <- t(sapply(c(0:(2^(n+1)-1)),function(x){(as.integer(intToBits(x))[1:(n+1)])}))

	for(i in 1:nrow(t))
	{
		index<-which(t[i,]==0)
		t[i,index]<--1
	}
	return(t)
}

n<-10 # seed value
comb=bits(n)
result<-c()
for(i in 1:2^(n+1))
{
	result <- c(result,holy(n,comb[i,]))
}

plot(result,pch=".") #creating the doughnut


