library(httr)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. To make your own application, register at
#    https://github.com/settings/developers. Use any URL for the homepage URL
#    (http://github.com is fine) and  http://localhost:1410 as the callback url
#
#    Replace your key and secret below.
myapp <- oauth_app("MYAPI",
                   key = "919a54740453508ab1d1",
                   secret = "d72fa2e479cacf958971111b5631e66b84dc0720"
)

# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos?q=datasharing+created_at", github_token)
stop_for_status(req)
output <-content(req)


#datashare <- which(sapply(output, FUN=function(X) "datasharing" %in% X ))

datashare <- which(sapply(output, FUN=function(X) "datasharing" %in% X ))

datashare

output[[19]]$created_at


# OR:
# req <- with_config(gtoken, GET("https://api.github.com/rate_limit"))
# stop_for_status(req)
# content(req)