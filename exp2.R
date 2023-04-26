fact=function(x){
    if (x==1) return (1)
    else
    return (x*fact(x-1))
}
occurence= function(dfi,x,row){
    for (j in row+1:nrow(dfi)){
        if (identical(c(x),c(dfi[j,]))){
            return (2)
        }
    }
    return (1)

}
temp=data.frame()
dfi=read.table('dataexp.txt',sep=' ')
print(dfi)
f=c()
for (i in 1:nrow(dfi)){
    a=dfi[i,]
    if(occurence(dfi,a,i)==1){
        temp=rbind(temp,dfi[i,])
    }
}
print(temp)
for (i in 1:nrow(temp)){
    f=c(f,sum(temp[i,]))
}
maxi=max(f)
print(maxi)
print(fact(maxi))


