# edit this file to contain credentials for the OAuth services you support.
# each entry needs a corresponding token model.
#
# eg. :twitter => TwitterToken, :hour_feed => HourFeedToken etc.

credentials = {}
credentials[:twitter]   = { :key => GlobalConfig.twitter_oauth_key, 
                            :secret => GlobalConfig.twitter_oauth_secret } if GlobalConfig.twitter_oauth_key
credentials[:google]    = { :scope => "https://mail.google.com/mail/feed/atom/", # see http://code.google.com/apis/gdata/faq.html#AuthScopes
                            :key => GlobalConfig.google_oauth_key, 
                            :secret => GlobalConfig.google_oauth_secret } if GlobalConfig.google_oauth_key
credentials[:yahoo]     = { :key => GlobalConfig.yahoo_oauth_key, 
                            :secret => GlobalConfig.yahoo_oauth_secret } if GlobalConfig.yahoo_oauth_key
credentials[:flickr]    = { :key => GlobalConfig.flickr_key, 
                            :secret => GlobalConfig.flickr_secret } if GlobalConfig.flickr_key
credentials[:linkedin]  = { :key => GlobalConfig.linkedin_key, 
                            :secret => GlobalConfig.linkedin_secret } if GlobalConfig.linkedin_key
credentials[:fireeagle] = { :key => GlobalConfig.fireeagle_oauth_key,
                            :secret => GlobalConfig.fireeagle_oauth_secret } if GlobalConfig.fireeagle_oauth_key
credentials[:friendfeed] = { :key => GlobalConfig.friendfeed_oauth_key,
                             :secret => GlobalConfig.friendfeed_oauth_secret } if GlobalConfig.friendfeed_oauth_key
                             
OAUTH_CREDENTIALS = credentials unless defined? OAUTH_CREDENTIALS
load 'oauth/models/consumers/service_loader.rb'