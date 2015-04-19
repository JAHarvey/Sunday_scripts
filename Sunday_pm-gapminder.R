#This is a script to explore the gap minder data set using R
#Johanna Harvey
#johannaaharvey@gmail.com
#April 19, 2015

install.packages("dplyr", dependencies=TRUE)
library("dplyr")


#read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", sep= "\t", header=TRUE) 

#gives you 
#for (number in 1:10){
#    number.out <- number + 10  
#}


#gives you the first 10 rows
for (number in 1:10) {
  print(gap.in[number,])
}

#nested for loops
for (row.number in 1:10){
  for (col.number in 1:5) {
    print(gap.in[row.number,col.number])
  }
}

gap.in[1:10,1:5]

#writing functions in r, = a set of code that does one thing, give function a name by storing it into an object (add.me)
add.me <- function(x, y){
  x + y
}
#to run function
add.me(3,4)











