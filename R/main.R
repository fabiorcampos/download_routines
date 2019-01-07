require(readxl)
library(dplyr)

# Set environment
setwd("~/dropbox2/Dropbox/R_PORTFOLIO/download_routines")

# Load files (in case of many xls)
#file.list = list.files(path = "input/", pattern='*.xlsx') 
#df.list = lapply(file.list, read_xlsx)
#df = bind_rows(df.list)
#rm(df.list)

# Format in a Data.frame
df = read_excel(path = "input/df.xlsx", col_names = TRUE, na = "")
df = as.data.frame(df)

# Create Vectors to pdf Url
pdf_url = df$UrlDi
pdf_url = na.omit(pdf_url)
pdf_vec = gsub("", "", pdf_url)

# Set place that the files will be storage
setwd("~/dropbox2/Dropbox/R_PORTFOLIO/download_routines/output")

# Loop Function
for(i in seq_along(pdf_url)){
      download.file(pdf_url[i], pdf_vec[i], mode="wb")
}

setwd("~/dropbox2/Dropbox/R_PORTFOLIO/download_routines")

# Create Vectors to xml Url
xml_url = df$UrlXmlDi
xml_url = na.omit(xml_url)
xml_vec = gsub("", "", xml_url)

# Set place that the files will be storage
setwd("~/dropbox2/Dropbox/R_PORTFOLIO/download_routines/output")

# Loop Function
for(i in seq_along(xml_url)){
      download.file(xml_url[i], xml_vec[i], mode="wb")
}

setwd("~/dropbox2/Dropbox/R_PORTFOLIO/download_routines")
