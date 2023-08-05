# library(hash)
# hey <- 1:19
# hey <- c(hey, 20)*10
# print(hey)

# a <- as.character(unlist(strsplit(readline("Enter a string: "), " ")))
# print(a)


setwd("C:/Users/HP/Desktop")
a <- readLines("test.txt")
a <-'hi hi we se hey hi show show'

print(a)
st<-strsplit(a," ")
print(st)
count=0
maxcount=2
st<-unlist(st)

for(i in 1 : length(st)){
    count=0
    for (j in i:length(st)){
        if(st[i] == st[j]){
            count <- count+1
        }
    }
    if(count>maxcount){
        maxcount=count
        print(st[i])
    }
}
print(count)