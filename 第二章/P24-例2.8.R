num <- c(11,11,8,9,7,9,12) #表2-14交通事故数
p1 <- num/sum(num) #计算概率
p2 <- rep(1/7,7) #理论分布
ks.test(jitter(p1),jitter(p2),alternative =  'two.sided') 
