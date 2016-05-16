complete <- function(directory,id){
  
  for (i in id){
    filename <- paste(directory,"/",formatC(i, width=3, flag="0"),".csv",sep = "")
    if (i==id[1]){
      data <- c(i,sum(complete.cases(read.csv(filename,head = TRUE))))
    }
    else{data <- rbind(data,c(i,sum(complete.cases(read.csv(filename,head = TRUE)))))
    }
  }
  colnames(data) <- c("id","nobs")
  data
}

complete("C:/Users/ggopi/OneDrive/Documents/R coursera/specdata",id = 1:322)
