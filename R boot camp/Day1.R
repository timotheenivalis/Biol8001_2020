a_vec<-c(1,2,3)
a_vec
str(a_vec)

a_vec*2
a_vec+c(5,6,7)
a_vec+1

b_vec<-a_vec + seq(from=10, to=30, by = 10)
b_vec

b_vec[2]
b_vec[3]
##########################
# This is a comment

library(tidyverse)

fake_df <-tibble(id = seq(from=1, to=100, by = 1),
                 group1 = rep(c('A','B','C','D'),25),
                 group2 = rep(c('X','Y'), each = 50),
                 val = rnorm(100, mean=0, sd = 1))
head(fake_df)
fake_df <- tibble(id = seq(from = 1, to = 100, by = 1),
                  group1 = rep(c('A','B','C','D'), 25),                  
                  group2 = rep(c('X','Y'), each = 50),                  
                  val = rnorm(100, mean = 0, sd = 1))
#####################
# Dolphin data

dolphin<-read_csv("Bouchard2018_stranding_data_Common_Dolphin.csv")
