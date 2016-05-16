pollutantmean <- function(directory,pollutant,id){
  
  for (i in id){
    filename <- paste(directory,"/",formatC(i, width=3, flag="0"),".csv",sep = "")
    if (i==id[1]){
      data <- read.csv(filename,head = TRUE)
    }
    else{data <- rbind(data,read.csv(filename,head = TRUE))
    }
  }
  mean(data[,c(pollutant)],na.rm=TRUE)
}

pollutantmean("C:/Users/ggopi/OneDrive/Documents/R coursera/specdata","sulfate",id = 1:10)
pollutantmean("C:/Users/ggopi/OneDrive/Documents/R coursera/specdata","nitrate",id = 70:72)
pollutantmean("C:/Users/ggopi/OneDrive/Documents/R coursera/specdata","nitrate",id = c(70,71,72))
pollutantmean("C:/Users/ggopi/OneDrive/Documents/R coursera/specdata","nitrate",id = 23)
pollutantmean("C:/Users/ggopi/OneDrive/Documents/R coursera/specdata","nitrate",id = 1:322)
