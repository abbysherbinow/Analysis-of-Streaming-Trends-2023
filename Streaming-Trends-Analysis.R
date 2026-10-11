# Analysis of Streaming Trends in the Most Streamed Songs of 2023
#
# Objective:
# Explore relationships between musical characteristics (BPM, key, and mode)
# and streaming performance among the most-streamed songs of 2023.
#
# Methods:
# Data cleaning, exploratory data visualization, descriptive statistics,
# regression analysis, and chi-squared hypothesis testing.
#
# Data source: "Most Streamed Spotify Songs 2023" dataset from Kaggle.

spotify_2023 <- read.csv("spotify-2023.csv")

data1 <- data.frame (spotify_2023$streams, spotify_2023$bpm, spotify_2023$key, spotify_2023$mode, spotify_2023$in_spotify_charts)

data1$ID <- seq.int(nrow(data1))

#add ID column

data1_nona <- na.omit(data1)
#(exlcude rows that have missing data, NA)

clean_data1 <- data1_nona[ !(data1_nona$ID %in% c(575)), ]

#remove specific row

#############

###BPM Bar Graphs

ogstreams <- clean_data1$spotify_2023.streams

streams <- as.numeric(ogstreams)


bpm <- clean_data1$spotify_2023.bpm

#########

sum(streams)


sub1 <- subset(clean_data1, bpm>50 & bpm<=75)


nrow(sub1)

ogstreams1 <- sub1$spotify_2023.streams
streams1<- as.numeric(ogstreams1)

sum(streams1)


sub2 <- subset(clean_data1, bpm>75 & bpm<=100)

nrow(sub2)

ogstreams2 <- sub2$spotify_2023.streams
streams2<- as.numeric(ogstreams2)

sum(streams2)


sub3 <- subset(clean_data1, bpm>100 & bpm<=125)

nrow(sub3)

ogstreams3 <- sub3$spotify_2023.streams
streams3<- as.numeric(ogstreams3)

sum(streams3)


sub4 <- subset(clean_data1, bpm>125 & bpm<=150)

nrow(sub4)

ogstreams4 <- sub4$spotify_2023.streams
streams4<- as.numeric(ogstreams4)

sum(streams4)


sub5 <- subset(clean_data1, bpm>150 & bpm<=175)

nrow(sub5)

ogstreams5 <- sub5$spotify_2023.streams
streams5<- as.numeric(ogstreams5)

sum(streams5)


sub6 <- subset(clean_data1, bpm>175 & bpm<=200)

nrow(sub6)

ogstreams6 <- sub6$spotify_2023.streams
streams6<- as.numeric(ogstreams6)

sum(streams6)


sub7 <- subset(clean_data1, bpm>200 & bpm<=225)

nrow(sub7)

ogstreams7 <- sub7$spotify_2023.streams
streams7<- as.numeric(ogstreams7)

sum(streams7)


2702927451/4

22085990800/35

51417027676/95

94128213142/231

149261769179/266

117693729558/217

2655883476/9

##################
#average streams per group of BPM
streamsxbpm<- c(295098164, 542367417, 561134471, 407481442, 541231870, 631028309, 675731863)

#number of songs for each group of BPM
numsongs<- c(9, 217, 266, 231, 95, 35, 4)

dev.new()
barplot(numsongs,
        main = "Beats Per Minute of the Top Songs of 2023",
        xlab = "Beats per Minute",
        ylab = "Number of Songs",
        names.arg = c("50-75", "75-100", "100-125", "125-150", "150-175", "175-200", "200-225"),
        col = c("purple","purple", "blue", "purple", "purple", "purple", "purple"))

dev.new()
barplot(streamsxbpm,
        main = "Beats Per Minute of the Top Songs of 2023 
        and Their Average Number of Streams",
        xlab = "Beats per Minute",
        ylab = "Average Number of Streams",
        names.arg = c("50-75", "75-100", "100-125", "125-150", "150-175", "175-200", "200-225"),
        col = c("purple","purple", "purple", "purple", "purple", "blue", "blue"))


###Key Bar Graphs
key <- clean_data1$spotify_2023.key

keyfreq <- table(key, exclude = NULL)
#frequency of each key

dev.new()
barplot(keyfreq,
        main = "Key of the Top Songs of 2023",
        xlab = "Key",
        ylab = "Number of Songs",
        col = c("purple", "purple", "purple", "blue", "purple", "purple",
                "purple", "purple", "purple", "purple", "purple"),
        las=2)


keysub1 <- subset(clean_data1, key=="A")

ogkeystreams1 <- keysub1$spotify_2023.streams

keystreams1 <- as.numeric(ogkeystreams1)


mean(keystreams1)
#408841412 (A)

keysub2 <- subset(clean_data1, key=="A#")

ogkeystreams2 <- keysub2$spotify_2023.streams

keystreams2 <- as.numeric(ogkeystreams2)

mean(keystreams2)
#552475435 (A#)

keysub3 <- subset(clean_data1, key=="B")

ogkeystreams3 <- keysub3$spotify_2023.streams

keystreams3 <- as.numeric(ogkeystreams3)

mean(keystreams3)
#519347957 (B)

keysub4 <- subset(clean_data1, key=="C#")

ogkeystreams4 <- keysub4$spotify_2023.streams

keystreams4 <- as.numeric(ogkeystreams4)

mean(keystreams4)
#604280249

keysub5 <- subset(clean_data1, key=="D")

ogkeystreams5 <- keysub5$spotify_2023.streams

keystreams5 <- as.numeric(ogkeystreams5)

mean(keystreams5)
#529525559

keysub6 <- subset(clean_data1, key=="D#")

ogkeystreams6 <- keysub6$spotify_2023.streams

keystreams6 <- as.numeric(ogkeystreams6)

mean(keystreams6)
#553036540

keysub7 <- subset(clean_data1, key=="E")

ogkeystreams7 <- keysub7$spotify_2023.streams

keystreams7 <- as.numeric(ogkeystreams7)

mean(keystreams7)
#577497189

keysub8 <- subset(clean_data1, key=="F")

ogkeystreams8 <- keysub8$spotify_2023.streams

keystreams8 <- as.numeric(ogkeystreams8)

mean(keystreams8)
#468446389

keysub9 <- subset(clean_data1, key=="F#")

ogkeystreams9 <- keysub9$spotify_2023.streams

keystreams9 <- as.numeric(ogkeystreams9)

mean(keystreams9)
#522363151

keysub10 <- subset(clean_data1, key=="G")

ogkeystreams10 <- keysub10$spotify_2023.streams

keystreams10 <- as.numeric(ogkeystreams10)

mean(keystreams10)
#452599401

keysub11 <- subset(clean_data1, key=="G#")

ogkeystreams11 <- keysub11$spotify_2023.streams

keystreams11 <- as.numeric(ogkeystreams11)

mean(keystreams11)
#476911864


streamsxkey<- c(408841412, 552475435, 519347957, 604280249, 529525559, 553036540, 577497189, 468446389, 
                522363151, 452599401, 476911864)

dev.new()
barplot(streamsxkey,
        main = "Key of the Top Songs of 2023 
        and Their Average Number of Streams",
        xlab = "Key",
        ylab = "Average Number of Streams",
        names.arg = c("A", "A#", "B", "C#", "D", "D#", "E", "F", "F#", "G", "G#"),
        col = c("purple","purple", "purple", "blue", "purple", "purple", "purple", "purple", "purple", "purple", "purple"))



###chi-squared test
#using mode and key

#Ho: the variables have no significant relationship
#Ha: the variables do have a significant relationship

Amajor <- subset(clean_data1, spotify_2023.mode=="Major" & spotify_2023.key== "A")
Amaj<- nrow(Amajor)

Asmajor <- subset(clean_data1, spotify_2023.mode=="Major" & spotify_2023.key== "A#")
Asmaj<- nrow(Asmajor)

Bmajor <- subset(clean_data1, spotify_2023.mode=="Major" & spotify_2023.key== "B")
Bmaj<- nrow(Bmajor)

Csmajor <- subset(clean_data1, spotify_2023.mode=="Major" & spotify_2023.key== "C#")
Csmaj<- nrow(Csmajor)

Dmajor <- subset(clean_data1, spotify_2023.mode=="Major" & spotify_2023.key== "D")
Dmaj<- nrow(Dmajor)

Dsmajor <- subset(clean_data1, spotify_2023.mode=="Major" & spotify_2023.key== "D#")
Dsmaj<- nrow(Dsmajor)

Emajor <- subset(clean_data1, spotify_2023.mode=="Major" & spotify_2023.key== "E")
Emaj<- nrow(Emajor)

efmajor <- subset(clean_data1, spotify_2023.mode=="Major" & spotify_2023.key== "F")
efmaj<- nrow(efmajor)

efsmajor <- subset(clean_data1, spotify_2023.mode=="Major" & spotify_2023.key== "F#")
efsmaj<- nrow(efsmajor)

Gmajor <- subset(clean_data1, spotify_2023.mode=="Major" & spotify_2023.key== "G")
Gmaj<- nrow(Gmajor)

Gsmajor <- subset(clean_data1, spotify_2023.mode=="Major" & spotify_2023.key== "G#")
Gsmaj<- nrow(Gsmajor)

Aminor <- subset(clean_data1, spotify_2023.mode=="Minor" & spotify_2023.key== "A")
Amin<- nrow(Aminor)

Asminor <- subset(clean_data1, spotify_2023.mode=="Minor" & spotify_2023.key== "A#")
Asmin<- nrow(Asminor)

Bminor <- subset(clean_data1, spotify_2023.mode=="Minor" & spotify_2023.key== "B")
Bmin<- nrow(Bminor)

Csminor <- subset(clean_data1, spotify_2023.mode=="Minor" & spotify_2023.key== "C#")
Csmin<- nrow(Csminor)

Dminor <- subset(clean_data1, spotify_2023.mode=="Minor" & spotify_2023.key== "D")
Dmin<- nrow(Dminor)

Dsminor <- subset(clean_data1, spotify_2023.mode=="Minor" & spotify_2023.key== "D#")
Dsmin<- nrow(Dsminor)

Eminor <- subset(clean_data1, spotify_2023.mode=="Minor" & spotify_2023.key== "E")
Emin<- nrow(Eminor)

efminor <- subset(clean_data1, spotify_2023.mode=="Minor" & spotify_2023.key== "F")
efmin<- nrow(efminor)

efsminor <- subset(clean_data1, spotify_2023.mode=="Minor" & spotify_2023.key== "F#")
efsmin<- nrow(efsminor)

Gminor <- subset(clean_data1, spotify_2023.mode=="Minor" & spotify_2023.key== "G")
Gmin<- nrow(Gminor)

Gsminor <- subset(clean_data1, spotify_2023.mode=="Minor" & spotify_2023.key== "G#")
Gsmin<- nrow(Gsminor)


r1<- c(Amaj, Asmaj, Bmaj, Csmaj, Dmaj, Dsmaj, Emaj, efmaj, efsmaj, Gmaj, Gsmaj)
r2<- c(Amin, Asmin, Bmin, Csmin, Dmin, Dsmin, Emin, efmin, efsmin, Gmin, Gsmin)

table <- matrix(c(r1, r2), nrow = 2, byrow =TRUE)


chisq.test(table)
#X-squared = 75.841, df = 10, p-value = 3.263e-12

c_value <- qchisq(.05, 10, lower.tail = FALSE)
#18.30704


##Regression Analysis
dev.new()
plot(clean_data1$spotify_2023.in_spotify_charts,streams, 
     main= "Spotify Chart Ranking vs Number of Streams", 
     xlim = c(0,100),
     xlab= "Spotify Chart Ranking", ylab= "Number of Streams",
     col = "purple") 

cor(clean_data1$spotify_2023.in_spotify_charts,streams)
lm(streams~clean_data1$spotify_2023.in_spotify_charts)
abline(lm(streams~clean_data1$spotify_2023.in_spotify_charts),
       col = "pink")

##Summary Stats

mean(streams)
#513355357
sd(streams)
#571485477
summary(streams)
#min - 2.762e+03 ()
#Q1 - 1.392e+08
#median - 2.849e+08
#Q3 - 6.741e+08
#max - 3.704e+09 ()

mean(bpm)
#122.8425
sd(bpm)
#28.19657
summary(bpm) 
#min - 65.0 ()
#Q1 - 100.0
#median - 121.0
#Q3 - 142.0
#max - 206.0 ()

#Frequency Tables

keyfreq
#A  A#   B  C#   D  D#   E   F  F#   G  G# 
#74  57  81 120  81  33  62  89  73  96  91 
74  +57+  81+ 120 + 81 + 33  +62+  89  +73+  96 + 91 
#857

major <- subset(clean_data1, clean_data1$mode == "Major")
nrow(major)
minor <- subset(clean_data1, clean_data1$mode == "Minor")
nrow(minor)
#major - 474
#minor - 383
474+383
#857

#55.31%
#44.69%