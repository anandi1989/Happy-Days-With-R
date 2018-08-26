#Author: Amit Nandi
#Dated : 24th Aug, 2015

handshakes <- function(n)
{
	return(which((n^4)-(n^3)-(204*(n^2))-(108*n)+(108^2)==0))
}

## Executions
n<-(1:108) # as m*n is 108, hence upper limit is 108. 
print(handshakes(n))
