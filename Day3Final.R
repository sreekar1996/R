
#DATAFRAMES

empname <- c("mary","johny","rony")
empsal <- c(30000,50000,7000)
empid <- c(1098,789,900)
empdf <- data.frame(id=empid,name=empname,salary=empsal,stringsAsFactors = FALSE)
str(empdf)
#accessing elements of dataframe
empdf$salary
empdf[1,2] <- ""
empdf[,3]


empdf[c(1:2),c(2:3)] #(rows,columns)
empdf[,"salary"]

#Adding new column
empdf$dept <- c("IT","HR","IT")
empdf[,""] <- c(test,test,test)
#Adding new rows
emp.newdata <- 	data.frame(
  id = c (60001:60003), 
  name = c("Rasmi","Pranab","Tusar"),
  salary = c(57800,72205,63208), 
  dept = c("IT","Operations","Finance"),
  stringsAsFactors = FALSE
)
empdf <- rbind(empdf,emp.newdata)
View(empdf)
head(empdf)
head(empdf,n=4,)
?head
tail(empdf,n=3)
subset(empdf,empsal<50000)
subset(empdf,empsal<50000,select = c(id,name))
nrow(empdf)
ncol(empdf)
empdf[order(empdf$salary),]
empdf[order(empdf$salary),decreasing=T]

#Changing NA values to 
empdf[empdf==""] <- NA

#Creating list
list_data <- list(c("Feb","Mar","Apr"), matrix(c(3,9,5,1,-2,8), nrow = 2))
names(list_data) <- c("Quarter", "A_Inner_list")
#accessing list
list_data[[1]]
list_data$Quarter
#accesing subelements
list_data[[1]][2]
list_data$A_Inner_list[2,]
#merging list
list12()<-c(list1,list2)

#myfunc is the function name and , "a" is the argument it takes
myfunc <- function(a) { # A function to print hello 5 times 
  i = 1 
  while( i <= a) {
    print("Hello")
    i=i+1
  }
  
} # end of function	

myfunc(5) # Calling a function, 5 is the value that gets passed to "a"



myfunc = function(a,b=5) { # A function to print hello 5 times 
  i = 1 
  print(a*b)
  
} # end of function	

myfunc(5)
myfunc(5,2)

myfunc = function(a,b=5) { # A function to print hello 5 times 
  
 a*b
}
data5 <- myfunc(2,3)
data5*3
data5/3
data5+3

#Explain about the scope of variables at this stage

myfunc = function(a,b=5) 
{
  x = 2
  
  print(paste("This i is inside",x))
  return (a*b*x)
  
}
print(paste("This i is outside",x))

myfunc(5)

#some inbuilt math functions log(), exp(), sqrt() etc

#WAP Given the marks of a student for a total marks of 200, 
#write a function to find the percentage. 
#Send this percentage to another function which prints 
#whether the student has passed or failed. If greater than 35 pass, else fail

#WAP Write a function to print the squares of the 
#first N natural numbers, where N would be the argument the user passes to the function


#Apply functions

stud_percent <- c(900,800,800,900,805,702)

#Create a matrix with the vector which contain student marks information
stud_marks <- c(900,800,800,900,805,702)
stud.marks <- matrix(stud_marks,ncol=2,nrow=3,byrow = TRUE ,dimnames = 
                list(c("Ram","Sham","Tony"),c("Sem1","Sem2")))


#Apply functions

#Find the max marks for each student for all sems
max(stud.marks[1,])
max(stud.marks[2,])
max(stud.marks[3,])

#or

for(i in 1:nrow(stud.marks))
{
 rowval<-stud.marks[i,]
  print(max(rowval))
  
}

#better way is to do using apply function
apply(stud_marks,2,mean) #column wise
apply(stud_marks,1,max) #rowwise
apply(stud_marks,1,mean,na.rm=TRUE)

diet_list<-list(Diet1=c(20,30,50),Diet2=c(40,50,60,89,90),Diet3=c(40,30,79,90,89))

#return lapply function
lapply(diet_list,mean)

diet_list<-data.frame(Diet1=c(20,30,50,78,90),Diet2=c(40,50,60,89,90),Diet3=c(40,30,79,90,89))
lapply(diet_list,mean)


"
-----------------------------------------------------
function to read different files
------------------------------------------------------
"
data <- read.csv("C:/Users/admin/Desktop/emp.txt",stringsAsFactors=FALSE,sep = " ")

View(data)
sal <- max(data$age)
retval <- subset(data, salary == max(salary),select=c(id))

write.csv(retval,"output.csv")

#read empdata file

data <- read.csv("C:/Users/admin/Desktop/Salaries.csv",stringsAsFactors = FALSE)
View(data)
names(data)


View(subset(data,TotalPay < 100000))
test <- unique(data$Id)
nrow(data)

#WAP : Find those who dint work overtime in the year 2011

# Add a new "Tax paid" column 

calculatetax <- function(empd)
{
  tax = 0
  taxvect <- c()
  for(row in 1:nrow(empd))
  { 
    salary <- empd[row,"TotalPay"]
    if(salary<=100000){
      tax=as.numeric(10/100*salary)
    }else if((salary>100000)&(salary<=300000)){
      tax=as.numeric(15/100*salary)
    }else{
      tax=as.numeric(20/100*salary)
    }
    taxvect[row] <- as.numeric(tax)
    
    #print(paste("tax vector is:" taxvect[row]))
  }
  #print(paste("tax is:",tax))
  return(taxvect)
  
}
ncol(data)

data$TaxPaid <- calculatetax(data)




#-------------------------------------------------------Until lunch----------------------------------------------------------------------------

# post lunch question
#In the same dataset , employee gets 7$ per hour as Overtime pay. Calculate the number of overtime hour per employee and add it as a new column



install.packages("dplyr")
library(dplyr)

names(data)
str(data)
View(data)


#select statement
View(select(data,c(Id,Year)))
data <- select(data,-c(Notes))
View(select(data,-1,-2,-3))
data <- rename(data,"OTPay" = OvertimePay)
slice(data,20:40)

#Remove the column notes
data <- select(data,-Notes)

#Change "" and not provided data to NA . Hint: Check day2

#To omit NA data
data <- na.omit(data)


#Filter function
filter(data,BasePay > 100000)
filter(data,BasePay>100000 & OTPay > 50000)




#mutate and transmute


data <- mutate(data,OTHours = as.integer(OTPay)/30)
data <- transmute(data,OTHours = as.integer(OTPay)/30)



fname <- function(mat)
{
  for(x in mat)
  {
    print(unlist(strsplit(x," "))[1])
  }
}
test <- c("Ram Govind","Sham Govind","Geetha Lakshmi","Seetha Lakshmi")
mat <- matrix(test,ncol=2,nrow=2)
fname(mat)















