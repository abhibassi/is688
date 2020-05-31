# variables
match.score <- 300
match.score

assign("match.score", 300)
match.score

get("match.score", globalenv())

# environments
my.environment <- new.env()
parent.env(my.environment)

assign("match.score", 320, my.environment)
my.environment[["match.score"]] <- 320
my.environment$match.score <- 320

get("match.score", my.environment)
my.environment[["match.score"]]
my.environment$match.score

# arithmetic operators
10 + 5
10 - 5
5 - 10
10 * 5
10 / 5
10 ^ 5
10 ** 5
format(10 ^ 5, scientific = FALSE)
10 %% 3
10 %/% 3

abs(-10)
log(2)
log(2, base = 10)
exp(5)
factorial(5)

pi
options()
options(digits = 10) # 9 digits after decimal
pi

1 / 0
-1 / 0
Inf + 5
is.finite(1 / 0)
is.infinite(1 / 0)

Inf / Inf
is.nan(Inf / Inf)

NA + 5
is.na(NA + 5)

is.na(NaN)
is.nan(NA)

# logical operators
5 > 2
5 >= 2
5 < 2
5 <= 2
5 == 2
5 != 2

"b" > "a"
"a" > "b"
"bc" > "ba"

!(TRUE)
TRUE | FALSE
TRUE & FALSE

# vectorized operations
student.marks <- c(10, 20, 30, 40) # combine function
student.marks

mean(student.marks) # single vector to scalar (vector of 1)

student.marks <- student.marks + 5 # single vector to single vector (same size)
student.marks
student.marks >= 30 # single vector to single vector (same size)

student.physics.marks <- c(20, 40, 30, 50)
student.chemistry.marks <- c(30, 20, 50, 20)
student.total.marks <- student.physics.marks + student.chemistry.marks # multiple vector to single vector
student.total.marks
student.total.marks[1]
student.total.marks[1:3]

# homogeneous data structures
# similar types of items
# atomic vectors 1D
# matrices 2D
# arrays nD

# heterogeneous data structures
# dissimilar types of items
# lists 1D
# data frames 2D

# atomic classes
# character
# numeric
# integer
# logical
# complex (imaginary numbers)

# vectors
student.names <- c("A", "B", "C", "D")
student.names
str(student.names)
is.character(student.names)

student.weights <- c(60.5, 72.5, 45.2, 47.5)
str(student.weights)
is.numeric(student.weights)

student.science.marks <- c(70L, 75L, 80L, 85L)
str(student.science.marks)
is.integer(student.science.marks)

student.science.interest <- c(FALSE, F, TRUE, T)
str(student.science.interest)
is.logical(student.science.interest)

is.numeric(student.science.marks)
is.integer(student.weights)

complex.vector <- c(10+2i, -1+10i, 4+3i, 7+8i)
str(complex.vector)
is.complex(complex.vector)

vector("character", length = 4)
vector("numeric", length = 4)
vector("integer", length = 4)
vector("logical", length = 4)
vector("complex", length = 4)

student.gym.marks <- c(70L, 75L, 80L, 85L)
student.woodworking.marks <- c(60L, 70L, 85L, 70L)
student.gym.marks + student.woodworking.marks
student.gym.marks >= 75

student.new.names <- c("Raj", "Rahul", "Priya", "Poonam")
student.new.names[1]
student.new.names[2]
student.new.names[1:3]
student.new.names[c(T, F, T, F)]
student.new.names[student.gym.marks >= 75]

student.new.weights <- c(60.5, 72.5, 45.2, "47.5")
str(student.new.weights)

as.numeric(student.gym.marks >= 75)
as.character(student.gym.marks)
student.new.new.weights <- c(60.5, 72.5, 45.2, 47.5)
as.integer(student.new.new.weights)
as.numeric(student.new.names)

# factors
student.genders <- c("Male", "Male", "Female", "Female")
student.new.genders <- factor(c("Male", "Male", "Female", "Female"))
student.new.genders
as.numeric(student.new.genders)
student.blood.groups <- factor(c("A", "AB", "O", "AB"), levels = c("A", "B", "AB", "O"))
student.blood.groups
str(student.blood.groups)

# lists
student1 <- list(student.new.names[1], student.new.new.weights[1], student.new.genders[1], student.gym.marks[1], student.woodworking.marks[1])
str(student1)
student1

student2 <- list(name = student.new.names[2],
                 weight = student.new.new.weights[2],
                 gender = student.new.genders[2],
                 gym = student.gym.marks[2],
                 woodworking = student.woodworking.marks[2])
str(student2)
student2

student3 <- list(name = student.new.names[3],
                 weight = student.new.new.weights[3],
                 gender = student.new.genders[3],
                 marks = c(student.gym.marks[3], student.woodworking.marks[3]))
str(student3)
student3

student1[1]
typeof(student1[1])
student1[[1]]
typeof(student1[[1]])
student1[1:3]

student2["name"]
student2[["name"]]
student2$gender
student2[c("gym", "woodworking")]

length(student1)
length(student3)

# data frames
students <- data.frame(student.new.names, student.new.new.weights, student.new.genders, student.gym.marks, student.woodworking.marks)
typeof(students)
students
str(students)

students <- data.frame(student.new.names, student.new.new.weights, student.new.genders, student.gym.marks, student.woodworking.marks, stringsAsFactors = FALSE)
str(students)

students[1]
typeof(students[1])
students[[1]]
typeof(students[[1]])
students[["student.new.names"]]
typeof(students[["student.new.names"]])
students$student.new.names
typeof(students$student.new.names)

students[1:3]
students[c("student.gym.marks", "student.woodworking.marks")]

students[1,2]
students[1:3,1:2]
students[c(1, 2),c(1, 3)]
students[,1]
students[1,]
students[c(T, F, T, F),]
students[student.new.genders == "Male",]
students[student.gym.marks >= 75,]

# matrices