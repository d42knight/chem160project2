dimension = c()
for (n in 1:30) {
	dists<-c()
	
	for (i in 1:10000){
		p1<-runif(n)
		p2<-runif(n)
		dist<-sqrt(sum((p1-p2)^2))
		dists<-c(dists,dist)
		
	}
	mean.dist<-mean(dist)
	dimension = c(dimension,mean.dist)
}
png("plot.png")

plot(dimension, main= "plot of hypercube distance", xlab=" the dimensions", ylab= "the average distance")