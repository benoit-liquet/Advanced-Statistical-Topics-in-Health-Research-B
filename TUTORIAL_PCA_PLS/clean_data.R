dat.1 <- read.table("nci.data.txt")
load("subtypes_names.Rdata")
one.sample <- c("UNKNOWN", "K562B-repro", "K562A-repro", "MCF7A-repro", "MCF7D-repro")
ind <- which(names.data%in%one.sample)
names.final <- names.data[-ind]
dat.1 <- dat.1[,-ind]
dim(dat.1)

dat.2 <- t(dat.1) 
dim(dat.2)
table(names.final)
Y <- rep(0,59)
group1 <- which(names.final%in%c("COLON","LEUKEMIA","PROSTATE","NSCLC")) 
Y[group1] <-1
table(Y)
