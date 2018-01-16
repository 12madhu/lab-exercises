## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# invalid character type, sum uses only numeric or complex or logical vectors.

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# need to call the stringr function using: library("stringr")

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# there is no object called "initial" so this will not be found when run


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
typeof(c(2,3))

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1,v2) {
    difference <- abs(length(v1) - length(v2))
    return(paste("The difference in lengths is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
print(CompareLength(c(2,4),1:20))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a,b) {
    difference <- abs(length(a)-length(b))
    if (difference > 0) {
        text <- paste("Your first vector is longer by", difference, "elements")
    }else{
        text <- paste("Your first vector is longer by", difference, "elements")
    }
    return(text)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(1:5, c(2,3))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1,v2,v3){
    return(c(v1,v2,v3))
}
# Send 3 vectors to your function to test it.
CombineVectors(1:3,c(4,5),4:8)
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses){
    gsub("[A-Z]","",courses)
}

