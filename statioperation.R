
modec <- function(v){
    uniq<-unique(v)
    uniq[which.max(tabulate(match(v,uniq)))]
}
age=as.integer(strsplit(readline('enter the ages : '),' ')[[1]])
weight= as.integer(strsplit(readline('enter the weight : '),' ')[[1]])
names=strsplit(readline('enter the names : '),' ')[[1]]
# print(summary(x))
# result=c()
# result['mean']=mean(x)
# result['median']= median(x)
# result['mode']=mode(x)
# print(result['mode'])
# boxplot(x)
dataframe= data.frame(
    names,
    age,
    weight
)
df=data.frame(
    age,weight
)
print("dataframe is")
print(dataframe)
print(dataframe[1])

# agesum=c(summary(dataframe$age))
# weightsum=c(summary(dataframe$weight))
# print(name(agesum))
# print(weightsum)
summ=do.call(cbind,lapply(df,summary))
summ=rbind(summ,Mode=c(modec(dataframe$age),modec(dataframe$weight)))

print("summary")
print(summ)
print('Correlation')
print(cor(dataframe$age,dataframe$weight))

# print(mean(dataframe[1:4,2]))

plot(dataframe$age,dataframe$weight,main='AGE VS WEIGHT')
boxplot(dataframe$age,dataframe$weight)


 