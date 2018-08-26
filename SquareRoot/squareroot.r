#Author : Amit Nandi
#Dated : 23rd Oct, 2018
root<-function(x)
{
	epsilon<-1e-08 #conditon
	R<-c()
	R[1]<-10 #initial guess
	count<-0
	repeat       #operation using repeat function
	{
		R[2]=(R[1]+(x/R[1]))/2
		if(abs(R[2]-R[1])<epsilon)
			break
		else
			R[1]<-R[2]
		count<-count+1 
	}
	#cat("Root of the number\n",R[2]) #output
	#cat("\nNumber of iteration done:",count)
	return(count)

}


indian_root<-function(y)
{
	pi<- 1e-08 #condition
	N<-c()
	N[1]<-10 #initial guess
	A<-c()
	counter<-0
	repeat              #operation using 'repeat' function
	{
		A[1]<- (y-(N[1])^2)/(2*N[1])
		N[2]<- N[1]+A[1]+(A[1])^2/(2*(N[1]+A[1]))
		if(abs(N[2]-N[1])<pi)
			break
		else
			N[1]<-N[2]
		counter<-counter+1
	}
	#cat("\nRoot of the Number is: ",N[2]) #output
	#cat("\nNumber of iteration: ",counter)
	return(counter)
}
pdf('Comparison between Babylonian & Indian Method.pdf')
#Compare between babylonian method & Indian method
ind_iteration<-c()
baby_iteration<-c()
for(i in 1:100)
{
	ind_iteration[i]=indian_root(i)
	baby_iteration[i]=root(i)
}

plot(ind_iteration,type='l',ylab="Number of Iteration in Babylonian & Indian Method", xlab = "Numbers",main="Comparison between Babylonian and Indian method")
points(baby_iteration,type='l',col="red")

legend('topright',c("Indian Method","Babylonian Method"),pch=20,col=c("Black","Red"),bg="white",ncol=2,cex=0.75)

dev.off()
