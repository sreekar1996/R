
install.packages("dplyr")
library(dplyr)

data <- read.csv("E:/Sharadha_Class_R/salaries.csv",stringsAsFactors = FALSE)
data[data=="Not provided"] <- NA
data[data==""] <- NA
data1 <- select(data,1,2,3,as.numeric(BasePay),5:12)
data <- na.omit(data)

data$BasePay <- as.numeric(data$BasePay)
data$OvertimePay <- as.numeric(data$OvertimePay)
data$OtherPay <- as.numeric(data$OtherPay)
data$Benefits <- as.numeric(data$Benefits)
str(data)
View(data)

 View(filter(data,TotalPay>100000))

View(mutate(data,OTHours = OTPay/30))
View(transmute(data,OTHours=OTPay/30))

View(mutate(data,Grading=if_else(TotalPay>200000,"GradeA","GradeB")))
View(mutate(data,TaxPay= case_when(TotalPay<100000~(10/100*TotalPay),
                                      TotalPay>=100000&TotalPay<=200000~(15/100*TotalPay),
                                      TotalPay>200000~(20/100*TotalPay)
                                   )
            )
     )


distinct(data,Year)
View(arrange(data,BasePay,OvertimePay))
View(arrange(data,desc(BasePay)))

salSummary <- summarise(data,
                         count=n(),
                         avgAccept = mean(TotalPay,na.rm=TRUE),
                         medianAccept = median(TotalPay,na.rm = TRUE)
)

groupyear <- group_by(data,Status)
colgSummary <- summarise(groupyear,
                         count=n(),
                         avgAccept = mean(TotalPay,na.rm=TRUE),
                         medianAccept = median(TotalPay,na.rm = TRUE)
                        )

View(colgSummary)




#install.packages("tidyr")


library(tidyr)


growthdf <- data.frame(
  country = c("A", "B", "C"),
  q1_2017 = c(0.03, 0.05, 0.01),
  q2_2017 = c(0.05, 0.07, 0.02),
  q3_2017 = c(0.04, 0.05, 0.01),
  q4_2017 = c(0.03, 0.02, 0.04))

#gather
gatherdf <-growthdf %>%
  gather(quarter, growth, q1_2017:q4_2017)


#spread
spreaddf <- tidier %>%
  spread(quarter, growth) 

#separate
separate_spreaddf <-tidier %>%
  separate(quarter, c("Qrt", "year"), sep ="_")
head(separate_spreaddf)

#Unite
unite_df <- separate_spreaddf %>%
  unite(Quarter, Qrt, year, sep ="_")
head(unite_df)



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
apply(stud.marks,2,mean) #column wise
apply(stud.marks,1,max) #rowwise
apply(stud.marks,1,mean,na.rm=TRUE)


diet_list<-list(Diet1=c(20,30,50),Diet2=c(40,50,60,89,90),Diet3=c(40,30,79,90,89))

#return lapply function
lapply(diet_list,mean)

diet_list<-data.frame(Diet1=c(20,30,50,78,90),Diet2=c(40,50,60,89,90),Diet3=c(40,30,79,90,89))
lapply(diet_list,mean)

sapply(diet_list,mean)





