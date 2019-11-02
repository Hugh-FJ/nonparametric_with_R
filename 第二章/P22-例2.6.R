x <- c(-5,-3,-1,0,1,2,4,7,8)  #表2-11中的到达时间
f <- c(1,1,2,1,5,5,3,1,1)  #表2-11中的观测频率
values <- rep(x,f)  #恢复为raw data
mean <- mean(values); var <- var(values)  #计算对应理论正态分布的两个参数
sd <- sqrt(var)
ks.test(values,pnorm,mean,sd)

#可以看到提示不应有连结，所以要对原始数据加入噪音
ks.test(jitter(values),pnorm,mean,sd)

