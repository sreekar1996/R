"
Sample1

"
2+3
print("Hello World")

"--------------------------
Introduction to RStudio
-------------------------
"

"Math Operations"
2+3
5+3*2
(5+3)*2
20/10
5%%3
5%/%4
5^2


"Relational operators"
10 == 10
10 != 16
3 > 6
5 <= 10
5 %in% (1:10)
seq(1,20,2)

"Logical operations"
(10>15)&(15<3)|(17>5)
(10>15)&((15<3)|(17 == 5))

#WAP : Write an expression which checks if 25.6 is lesser than or equals to 34 and 7 is greater than or equals to 5
#WAP: Expression to check if reminder of 10%5 is not 0

#Variable creation and assignment
a <- 2
print(a)
a = 3
print(a)
2 -> a
addNumber <- 2+3

"
---------------------------------------------------
Variables assignment and operation
---------------------------------------------------

"
"Variable names invalid: Cannot start withnumber., _ 
shldnt have any special character than _ and . "

var_name2. <- 10
var_name% <- 20
2var_name <- 10
var.name <- 10
.2var_name = 5
_var_name = 10

"basic function on variables"

ls()
ls(pattern = "var")
rm(var_name2.)
length(x)

#WAP : Generate a sequence of numbers and get the length. What do you infer from the output

"Mathematica/logical operation on variable"
x = 17	
y = 20
output <- x+y
print(output)
test <- x > y
print(test)
#string operation
x = "Hello"
x = 'Hello'
x = "\"\" is called a double quote"
cat(x)
print(x)



"String variable operations"
nchar(x)
cat("Hello","test", sep = "|")
strsplit("Hello World you"," ")
toupper("Hello")
tolower("Hello")


"substitute"
x <- "R Tutorial"
gsub("ut","ot",x)
gsub("tut","ot",x,ignore.case=T)

"Get substring"
substr("abcdef", 2, 5)

#To check if value is a subset 
chars <- "test"
value <- "es"
grepl(value, chars,ignore.case = TRUE,fixed = TRUE)

#WAP: "This is DSE class happening in Hyderabad" . Find the number of words in this string
#WAP: "Convert the above string into 'This is DSE class happening in Hyderabad for the year 2018'"

#Date Functions Refer to Day 1 notes
dt = Sys.Date()
date()

format(dt, format=" %Y %B %d")

dt <- as.Date("09/11/2018","%d/%m/%Y")
format(dt, format=" %Y %B %d")

#some date related operations
dt1 <- dt + 1
dt2 <- dt - 3
dt1 - dt2
#try this
dt1 + dt2


------------------------------------------------
Vectors
----------------------------------------------


"Logical  Type"
var <- c(TRUE,FALSE)
class(var)


"Integer Type"
var <- 8L
c <- c(40L,15L)
class(c)

"Numeric Type"
c <- c(10.5,8,7) 
class(c)

"Character Type"
c <- c("Hello","World")
class(c)

#WAP:Find the class of vectors"
c <- c(8.9,17L,TRUE)
c <- c(89.9,TRUE,"Hello")


c <- c(1:10) 
c <- seq(1,10,2)

#WAP: Can you tell the difference in the output when you do 1:10 and c(1:10)

"NA values"
x <- c(1,NA,30)

"Different type conversion"

as.integer(c("32","54"))
as.Date("2018-09-05")
is.integer("23")

#WAP:There is a string variable like x <- "1,2" . Can you get the sum of the numbers in the variables

"Accessing elements of vector/Subsetting of a vector"

x <- c("abc","def","hij","kly","jyi")
x[2]
x[c(2,3,4)]
x[2:6]
x[-(2:5)]
x[-c(3,7,9)]
x[x %in% c(1, 2, 5)]
test <- c(10,20,50)
(test>20)
subset(test,test>20)

#WAP : Use the same string "This is DSE class in Hyderabad" . Display the second word of the string

x <- c(1,NA,30)
max(x)
min(x)
mean(x,na.rm=TRUE) 
sum(x,na.rm = TRUE)

"Adding new element or changing the value of existing element"
a <- c(10,5,10)
a[4] <- 30

#WAP : Can someone guess how can we change the value of existing element

"combining two vectors" 
a <- c(1,2,3)
b <- c(4,5,6)
n <- c(a,b)

"vectors arithmetic"
a + b 
a - b
"Vector relational operations"
a > b
a == b

#WAP:try some of the vector relation operations like < or !=

----
  #vector string functions and operations
---
empname <- c("Sham Govind","Ram test","Sham test")
empnew <- gsub("Sham","sam",empname)
empnew <- substr(empname,2,5)
#We have already used cat to combine
cat(empname,sep="|")
paste(empname,collapse="|")

#WAP: Can someone tell the difference between two output
#WAP: Use strsplit function previously coded
empname <- strsplit(empname," ")

#Another usage of paste
x <- c("a", "b", "c", "d")
y <- c("w", "x", "y", "z")
paste(x,y, sep="%%",collapse="|")



sort(empname)
c <- c(20:30)
elements <- which(c >= 25) #Takes a relation operation and gives the position of the elements which satisfy the condition
c[c >= 25] #Gives the values of the element which satisfy the condition
any(c>5)
all(c>5)
 

"Example: 
  Create two vectors 
items_profit_day1 <- (10,20,30)
items_profit_day2 <- (20,20,10)

1) Find out which item had better profits on day 2 when compared to day 1 
and how much was the difference in profit

2) Find the percentage change of each item in day2 when compared to day1

3) Check if there are any items which had  better profits than the previous day
"

"Solution"

items_profit_day1 <- c(10,20,30)
items_profit_day2 <- c(20,20,10)
profitcalc <- items_profit_day2-items_profit_day1
profitcalc[which(profitcalc > 0)]
subset(profitcalc,profitcalc > 0)
pctchg <- profitcalc/items_profit_day1*100
any(items_profit_day2>items_profit_day1)




"Named Vector/Indexing"

x <- c(a =1,b =2,c=3)
or 
#existing vectors
x <- c(1,2,3)
names(x) <- c("a","b","c")

x["a"]

"Logical Indexing" 
x <- c(2,3,4)
ind -> c(TRUE,FALSE,TRUE)

x[ind]

x[x>2]
which(x>2)

"
1) For the same profit vector created, give names to the 
items as phone,Computer,TV
2) Add a new item to profit vector EarPhone, profit being 30 on day 1 ,NA day 2
3)Among the two days, which day was profitable 
5)Add a column which contains date , yesterday's date for day1 and today's date for day2.
#)
"
"Solution"
#1
item_names <- c("Phone","Computer","TV")

#2
items_profit_day1[4] <- 30
names(items_profit_day1[4]) <- c("Earphones")


items_profit_day1 <- c(items_profit_day1,"Earphone"=30)


#3
dayselling <- c("day1"= sum(items_profit_day1,na.rm = TRUE),"day2" = sum(items_profit_day2,na.rm=TRUE))
which(dayselling==max(dayselling))

#4 
which(items_profit_day2>items_profit_day1)

#5
items_profit_day1 <- c(items_profit_day1,"Date"=as.character(Sys.Date()-1))
items_profit_day2[5] <- Sys.Date()

class(items_profit_day1)








