############################## manual work #######################

data1= rnorm(1000,mean=0,sd=1)
hist (data1)
data1s = data1^2
hist(data1s,n=100)

data2 = rnorm(1000,mean=0,sd=1)
hist(data2)
data1.data2=data1^2+data2^2
hist(data1.data2,n=100)

data3 = rnorm(1000,mean=0,sd=1)
hist(data3)
data1.data2.data3=data1^2+data2^2+data3^2
hist(data1.data2.data3,n=100)

############################### automated ##############################

ChiSqGenerator = function(sample,df){
  chis.data = rep(0,sample)
  for(i in 1:df){
    norm.data = rnorm(sample,mean=0,sd=1)
    chis.data = chis.data+norm.data^2
  }
  
  return(chis.data)
}

n.sample = 100000
n.bin = 100

# 1 degree
hist(ChiSqGenerator(n.sample,1),n.bin)
d.1 = density(ChiSqGenerator(n.sample,1))
plot(d.1)

# 2 degree
hist(ChiSqGenerator(n.sample,2),n.bin)
d.2 = density(ChiSqGenerator(n.sample,2))
plot(d.2)

# 3 degree
hist(ChiSqGenerator(n.sample,3),n.bin)
d.3 = density(ChiSqGenerator(n.sample,3))
plot(d.3)

# 4 degree
hist(ChiSqGenerator(n.sample,4),n.bin)
d.4 = density(ChiSqGenerator(n.sample,4))
plot(d.4)

# 5 degree
hist(ChiSqGenerator(n.sample,5),n.bin)
d.5 = density(ChiSqGenerator(n.sample,5))
plot(d.5)

# 6 degree
hist(ChiSqGenerator(n.sample,6),n.bin)
d.6 = density(ChiSqGenerator(n.sample,6))
plot(d.6)

# 7 degree
hist(ChiSqGenerator(n.sample,7),n.bin)
d.7 = density(ChiSqGenerator(n.sample,7))
plot(d.7)

# 8 degree
hist(ChiSqGenerator(n.sample,8),n.bin)
d.8 = density(ChiSqGenerator(n.sample,8))
plot(d.8)

# 9 degree
hist(ChiSqGenerator(n.sample,9),n.bin)
d.9 = density(ChiSqGenerator(n.sample,9))
plot(d.9)

# 10 degree
hist(ChiSqGenerator(n.sample,10),n.bin)
d.10 = density(ChiSqGenerator(n.sample,10))
plot(d.10)
