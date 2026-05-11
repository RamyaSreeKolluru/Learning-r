x<-5
y<-10
x+y

name<- "Ramya"
age<- 22
paste("Hello, my name is", name, "and I am" , age, "years old")

grades<- c(85,90,78,92,88)
mean(grades)
sum(grades)
max(grades)
min(grades)
length(grades)

# Create vectors for a small dataset
student<- c("Ana", "Bob", "Cara", "Dev", "Eva")
grade <- c(85, 90, 78, 92, 88)
year <- c(2, 3, 1, 4, 2)

#Combine into a data frame (like a spreadsheet)
df <- data.frame(student, grade, year)
df

#Access a single column
df$grade

#Filter only students with a grade above 85
df[df$grade > 85, ]

#Filter only year 2 students
df[df$year == 2, ]

#Add a new column - pass or fail 
df$pass <- df$grade >=80
df

#This creates a standalone variable
average<- mean(df$grade)
average

#This adds it as a column inside df
df$average<- mean(df$grade)
df

library(tidyverse)

#Load a built-in dataset 
data(mpg)
View(mpg)

glimpse(mpg)
filter(mpg, year== 2008)

#Select only 3 columns
select(mpg, manufacturer, model, hwy)
       
# Arrange: sort by highest mpg, highest first
arrange(mpg, desc(hwy))

#Mutate: create a new column
mutate(mpg, efficiency = hwy/cty)

mpg %>%
  filter(year==2008) %>%
  select(manufacturer, model, hwy)%>%
  arrange(desc(hwy))

# what is the average highway mpg for each manufacturer, and how many cars do 
#they have in the dataset?
mpg%>%
  group_by(manufacturer) %>%
  summarize(
    avg_hwy = mean(hwy),
    count = n()
  ) %>%
  arrange(desc(avg_hwy))

getwd()
