"
Start the class with this problem statement
"
empname <- c("Ram","Sham","Geeta")
emp_marks_sem1 <- c(100,90,90)
emp_marks_sem2 <- c(85,90,90)

#find the total marks of each student across the semesters
total_marks <-  emp_marks_sem1 + emp_marks_sem2
percent <- (total_marks/200 * 100)


#Find all the FCD in the vectors
percentfcd <- percent > 90
percent[percentfcd]

#Find the person greater than 90
which(percent>90)

"Matrix: It is a collection of similar type of data in 2 dimesional format
 matrix(data, nrow, ncol, byrow, dimnames)
"
mat <- matrix(c(1:12), ncol = 4,nrow = 3, byrow = FALSE)  
mat1 <- matrix(c(1:6), ncol = 3, byrow = TRUE ,dimnames =list(c("r1","r2","r3"),c("c1","c2","c3"))) 

rownames(mat) <- c("r1", "r2", "r3")
colnames(mat) <- c("c1", "c2", "c3","c4")
              
#Subsetting of matrix
mat[, 2]
mat[1:2, 2:3]
mat[,]
mat[1,]
mat[,-4]
mat[3]
mat[c("r1","r2"),c("c1","c3")]
mat[4,1] <- 4
#Operations on matrix
ncol(mat)
nrow(mat)
rowSums(mat)
colSums(mat)

mat <- cbind(mat,c(10:12))
mat <- rbind(mat,c(10:13))

#To remove a column or group of columns
mat <- mat[,-3]
mat <- mat[,-c(1)]
mat[-2]

stud_percent <- c(900,800,800,900,805,702)

#Create a matrix with the vector which contain student marks information
stud_marks <- c(900,800,800,900,805,702)
mat <- matrix(stud_marks,ncol=2,nrow=3,byrow = TRUE ,dimnames = 
                list(c("Ram","Sham","Tony"),c("Sem1","Sem2")))

#Find the total sem marks of student Ram
sums <- sum(mat["Ram",])

"Find the total marks of all sem for each student and add it as new column"
sumsfull <- rowSums(mat)
mat <- cbind(mat,sumsfull)

#"Array"
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15,16)
result <- array(c(vector1,vector2),dim = c(3,4,3),dimnames = list(row.names,column.names,matrix.names))

column.names<- c("COL1","COL2","COL3","COL4")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2","Matrix3")
rownames[result]

# Print the third row of the second matrix of the array.
print(result[,,2])

# Print the element in the 1st row and 3rd column of the 1st matrix.
print(result[1,3,1])

# Print the 2nd Matrix.
print(result[,,2])



"If else and nested elseif"

sc_marks = 100
maths_marks = 100
if(sc_marks >= 95 & maths_marks >=90)
{
  print("Get Cycle")
}else
{
  print("Need to work harder")
}

if((sc_marks >= 95) & maths_marks >=90)
{
  print("Get bike")
}else if(sc_marks >= 90 & maths_marks >= 70)
{
  print("Get Cycle")
}else
{
  
  print("Work harder")
  
}

#WAP: To check if a number is odd or even

AA = 'bar'

switch(AA,)
switch(AA, 
       foo={
         # case 'foo' here...
         print('foo')
       },
       bar={
         # case 'bar' here...
         print('bar')    
       },
       {
         print('default')
       }
)

if(AA=="bar"){}else if(AA=="foo"){}else{}


#while loop

x = 0

while(x <= 10)
{
  print(x)
  x = x+1
}

"
WAP1 : Modify the above code to make it into an infinite loop 

WAP2 : Modify the above code to print the first 20 numbers divisible by 5
Justify : How is the repeat statement better than the for loop for the previous question"

x = 0
repeat
{
  print(x)
  x = x+1
  if(x > 10)
    break

}

x <- c(1,3,4,5)
for (val in 1:length(x)) {
  if (val == 2){
    next
  }
  print(x[val])
}



#A simple looping condition to print the first 5 even numbers

#Problems to be solved
"1) A balloon when inflated increases the  pressure by 20 pascals for every blow
 The balloon will burst if it reaches 280 pascal. Simulate this process using 
looping


2) You have a playlist of 30 songs. If 13th song or 20th song is being played, 
you skip playing that song and play the next
song . Simulate this process using looping  


Acess every element of a vector and matrix using loop

3) Convert the matrix into vector and 2 to every element using loop and without using loop

4) Access all the elements of a matrix using loops
"




