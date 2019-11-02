y <- c(343,27,9,1,1,1,2) #表2-9作者数
p1 <- y/sum(y) #计算样本数据的概率，注意：不是累积概率
Vlachy <- function(x) return(0.8389/x^3.055)
p2 <- c()
for (i in 1:7) p2[i] = Vlachy(i) #计算出洛特卡分布的分布律，注：仍不是累积概率
ks.test(p1,p2) #K—S检验，但带有连结

length(unique(p1)) == 7;length(unique(p2)) == 7 #发现是p1中有相同概率，对它加点噪声

ks.test(jitter(p1),p2)
