library(dplyr)

age.raw <- read.csv("C:/Users/Nandhita/Desktop/Spring2014/CS534 - Machine Learning/Project/user engagement/AGE.csv",stringsAsFactors = FALSE)
head(age.raw) # id, age

users.raw <- read.csv("C:/Users/Nandhita/Desktop/Spring2014/CS534 - Machine Learning/Project/user engagement/USERS.csv",stringsAsFactors = FALSE)
head(users.raw) # id, became_client_date, transfered_funds_date

assets.raw <- read.csv("C:/Users/Nandhita/Desktop/Spring2014/CS534 - Machine Learning/Project/user engagement/ASSETS_LIABILITIES.csv",stringsAsFactors = FALSE)
head(assets.raw) # id, snapshot_date, ttl_assets, ttl_liabilities, net_wealth, ttl_inv_assets
#multiple same id's

email.raw <- read.csv("C:/Users/Nandhita/Desktop/Spring2014/CS534 - Machine Learning/Project/user engagement/EMAIL_PREF.csv",stringsAsFactors = FALSE)
head(email.raw) #id, weekly_email_preference, daily_email_preference

logins.raw <- read.csv("C:/Users/Nandhita/Desktop/Spring2014/CS534 - Machine Learning/Project/user engagement/LOGINS.csv",stringsAsFactors = FALSE)
head(logins.raw) #id client_type_desc, event_type_desc, source_created_date, source_updated_date, source_deleted_date
#multiple rows of same id's

data = cbind(age.raw, users.raw, assets.raw, email.raw, logins.raw)
#number of rows: 66588, 66587, 284144, 57577, 980772

join1 = inner_join(age.raw, users.raw, by="id")
join2 = inner_join(join1, email.raw, by="id" )

join2%.%filter(became_client_date=="NA")

signed=subset(join2, became_client_date >0)
nrow(signed) #868 clients only who has signed up?
nrow(join2) #total 57577 clients
nrow(users.raw)
a=subset(users.raw, became_client_date >0)  #922 clients in users.raw table
