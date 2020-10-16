getwd()
setwd("C:/Users/user/Documents/R Programs/Sample Data Sets")
movies<-read.csv(file.choose())
head(movies)
str(movies)
rm(movies)
colnames(movies)<-c("Film","Genre","CriticRating","AudienceRating",
                    "BudgetMillions","YearOfRelease")

library(ggplot2)

colnames("AudienceRatings %")<-"AudienceRatings"

factor()
is.factor(movies$`Year of Release`)


ggplot(movies, aes(x=CriticRating,y=AudienceRating,color=Genre,size=
        BudgetMillions))+ 
geom_point() + geom_line()
