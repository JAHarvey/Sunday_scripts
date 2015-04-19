#This is a script to explore the gap minder data set using R
#Johanna Harvey
#johannaaharvey@gmail.com
#April 19, 2015

install.packages("dplyr", dependencies=TRUE)
y
library("dplyr")




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



gap.in %>%
  filter(pop > 15000000) %>%
  select (country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))

#Challenge
#Calculate the mean population per continent per year for year prior to 1990

gap.in %>%
  filter(year < 1990) %>%
  group_by(continent) %>%
  summarize(mean = mean (pop)) -> data.out


data(iris)
attach(iris)
install.packages("tidyr", dependencies=TRUE)
library("tidyr")

#Turn iris data set from wide to long format

gather(iris, "Measurement", "Value", 1:4) -> iris.long



