# starssmall <- read.csv('C:\\Users\\Sandeep Kumar\\Google Drive\\Ed Research\\Ratings\\Monetate Datasets\\HideStarsTest\\starssmall.purchase', header=FALSE)
# starsbig <- read.csv('C:\\Users\\Sandeep Kumar\\Google Drive\\Ed Research\\Ratings\\Monetate Datasets\\HideStarsTest\\starsbig', header=FALSE)
# library(dplyr)
# colnames(starsbig) <- c('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25') 
# stars_dataset <- starsbig[,c(1,5,6,8,9,10)]
# head(stars_dataset)
# head(starsbig)
# colnames(stars_dataset) <- c('user_id','purchase_id','price','treatment_var','new_customer', 'page_views')
# starsbig <- NULL
# rm(starsbig)
# write.csv(stars_dataset,'C:\\Users\\Sandeep Kumar\\Google Drive\\Ed Research\\Ratings\\Monetate Datasets\\HideStarsTest\\clean_data')
#-------------------------------------------------------------------------------------------------------
#Actual analysis code starts here
#-------------------------------------------------------------------------------------------------------
# Treatment group data i.e. people who were not shown stars 
treatment_data <- stars_dataset %>% filter(treatment_var == 1) 

# Control group data i.e. people who were shown stars 
control_data <- stars_dataset %>% filter(treatment_var == 0)
