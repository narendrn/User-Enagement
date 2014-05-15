age.raw <- read.csv("C:/Users/Nandhita/Desktop/Spring2014/CS534 - Machine Learning/Project/user engagement/AGE.csv",stringsAsFactors = FALSE)
head(age.raw) # id, age
users.raw <- read.csv("C:/Users/Nandhita/Desktop/Spring2014/CS534 - Machine Learning/Project/user engagement/USERS.csv",stringsAsFactors = FALSE)
head(users.raw) # id, became_client_daye, transfered_funds_date
assets.raw <- read.csv("C:/Users/Nandhita/Desktop/Spring2014/CS534 - Machine Learning/Project/user engagement/ASSETS_LIABILITIES.csv",stringsAsFactors = FALSE)
head(assets.raw) # id, snapshot_date, ttl_assets, ttl_liabilities, net_wealth, ttl_inv_assets
email.raw <- read.csv("C:/Users/Nandhita/Desktop/Spring2014/CS534 - Machine Learning/Project/user engagement/EMAIL_PREF.csv",stringsAsFactors = FALSE)
head(email.raw) #id, weekly_email_preference, daily_email_preference
logins.raw <- read.csv("C:/Users/Nandhita/Desktop/Spring2014/CS534 - Machine Learning/Project/user engagement/LOGINS.csv",stringsAsFactors = FALSE)
head(logins.raw) #id client_type_desc, event_type_desc, source_created_date, source_updated_date, source_deleted_date
data = cbind(age.raw, users.raw, assets.raw, email.raw, logins.raw)

