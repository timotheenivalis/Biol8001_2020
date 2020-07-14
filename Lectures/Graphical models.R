
library(ggplot2)
library(ggforce)
library(ggpubr)

#graphical model for vaccine challenge experiment
png("images/Lecture3_gm_vaccine.png")
dat = data.frame(x0=c(.55), y0=c(.25), r=.07)
ggplot() + scale_x_continuous(limits = c(.1,.9)) +
  scale_y_continuous(limits = c(0,.7))+
  geom_circle(aes(x0=x0, y0=y0,r=r),data=dat)+
  geom_rect(aes(xmin=.5,ymin=.55,xmax=.6,ymax=.65), fill=NA, colour="black") +
  geom_rect(aes(xmin=.2,ymin=.2,xmax=.3,ymax=.3), fill=NA, colour="black") +
  annotate("rect", xmin = .45, xmax = .65, ymin = .15, ymax = .35,
           alpha = .2, fill="blue", colour= "black")+
  geom_segment(aes(x=.55, y=.55, xend=.55, yend=.35), 
               arrow=arrow(), size=1, color="blue")+
  geom_segment(aes(x=.75, y=.25, xend=.65, yend=.25), 
               arrow=arrow(), size=1, color="blue")+
  geom_segment(aes(x=.3, y=.25, xend=.45, yend=.25), 
               arrow=arrow(), size=1, color="blue")+
  annotate("text", x=.55, y=.25, label="Score[{i}]", parse = TRUE,size=5)+
  annotate("text", x=.8, y=.25, label="\u03c3", size=8)+
  annotate("text", x=.55, y=.6, label="Cage#", size=5)+
  annotate("text", x=.25, y=.25, label="Treat", size=5)+
  #ggtitle("Graphical model for vaccine challenge experiment") +
  theme_void()
dev.off()
 
#graphical model for drought experiment
png("images/Lecture3_drought.png")
dat = data.frame(x0=c(.55), y0=c(.25), r=.07)
ggplot() + scale_x_continuous(limits = c(.1,.9)) +
  scale_y_continuous(limits = c(0,.7))+
  geom_circle(aes(x0=x0, y0=y0,r=r),data=dat)+
  geom_rect(aes(xmin=.5,ymin=.55,xmax=.6,ymax=.65), fill=NA, colour="black") +
  geom_rect(aes(xmin=.15,ymin=.2,xmax=.3,ymax=.3), fill=NA, colour="black") +
  annotate("rect", xmin = .45, xmax = .65, ymin = .15, ymax = .35,
           alpha = .2, fill="blue", colour= "black")+
  geom_segment(aes(x=.55, y=.55, xend=.55, yend=.35), 
               arrow=arrow(), size=1, color="blue")+
  geom_segment(aes(x=.75, y=.25, xend=.65, yend=.25), 
               arrow=arrow(), size=1, color="blue")+
  geom_segment(aes(x=.3, y=.25, xend=.45, yend=.25), 
               arrow=arrow(), size=1, color="blue")+
  geom_segment(aes(x=.22, y=.3, xend=.5, yend=.6), 
              linetype = 2, size=1, color="blue")+
  annotate("text", x=.55, y=.25, label="Leaf_Temp[{i}]", parse = TRUE,size=5)+
  annotate("text", x=.8, y=.25, label="\u03c3", size=8)+
  annotate("text", x=.55, y=.6, label="Treat", size=5)+
  annotate("text", x=.22, y=.25, label="Genotype", size=5)+
  #ggtitle("Graphical model for drought experiment") +
  theme_void()
dev.off()

#graphical model for NODk diet experiment
png("images/Lecture3_diet.png")
dat = data.frame(x0=c(0.33,.57), y0=c(0.25,.25), r=.06)
ggplot() + scale_x_continuous(limits = c(0,.9)) +
  scale_y_continuous(limits = c(0,.7))+
  geom_circle(aes(x0=x0, y0=y0,r=r),data=dat)+
  geom_rect(aes(xmin=.5,ymin=.55,xmax=.6,ymax=.65), fill=NA, colour="black") +
  geom_rect(aes(xmin=.15,ymin=.55,xmax=.3,ymax=.65), fill=NA, colour="black") +
  annotate("rect", xmin = .25, xmax = .65, ymin = .15, ymax = .35,
           alpha = .2, fill="blue", colour= "black")+
  geom_segment(aes(x=.56, y=.55, xend=.56, yend=.32), 
               arrow=arrow(), size=1, color="blue")+
  geom_segment(aes(x=.75, y=.25, xend=.63, yend=.25), 
               arrow=arrow(), size=1, color="blue")+
  geom_segment(aes(x=.39, y=.25, xend=.51, yend=.25), 
               arrow=arrow(), size=1, color="blue")+
  geom_segment(aes(x=.25, y=.55, xend=.51, yend=.32), 
               arrow=arrow(), size=1, color="blue")+
  geom_segment(aes(x=.3, y=.6, xend=.5, yend=.6), 
               linetype = 2, size=1, color="blue")+
  geom_segment(aes(x=.22, y=.55, xend=.32, yend=.3), 
               linetype = 2, size=1, color="blue")+
  geom_segment(aes(x=.5, y=.6, xend=.35, yend=.3), 
               linetype = 2, size=1, color="blue")+
  annotate("text", x=.57, y=.25, label="Weight[{i}]", parse = TRUE,size=5)+
  annotate("text", x=.33, y=.25, label="Age[{ij}]", parse = TRUE,size=5)+
  annotate("text", x=.8, y=.25, label="\u03c3", size=8)+
  annotate("text", x=.55, y=.6, label="Diet", size=5)+
  annotate("text", x=.22, y=.6, label="Genotype", size=5)+
  #ggtitle("Graphical model for NODk diet experiment") +
  theme_void()
dev.off()




