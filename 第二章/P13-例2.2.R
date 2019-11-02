#values 为实际得到的数据
values <- c(380,69,43,8)
#pp 为预期概率
pp <- c(0.8,0.12,0.07,0.01)
#用chisq.test()函数进行卡方检验
result <- chisq.test(values,p=pp)
result
#结果P值大于0.05，所以无法拒绝原假设

#由于最后一组的期望频数小于5，需要对最后两组进行合并
values2 <- c(380,69,51)
pp2 <- c(0.8,0.12,0.08)
result2 <- chisq.test(values2,p = pp2)
result2
#结果合并后的P值仍大于显著性水平，所以仍不可以拒绝原假设