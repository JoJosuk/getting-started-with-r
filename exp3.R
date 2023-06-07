age=as.integer(unlist(strsplit(readline('Enter only age values:'),' ')))
weight=as.integer(unlist(strsplit(readline('Enter only weight values:'),' ')))
df=data.frame(weight,age)

summ=do.call(cbind, lapply(df, summary))
summ=rbind(summ,Mode=c(
  which.max(tabulate(age)),
  which.max(tabulate(weight))
))

print(mean(df[1:4,2]))

print(summ)
print("Corr:-")
print(cor(age,weight))

boxplot(age)
