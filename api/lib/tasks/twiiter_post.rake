namespace :twitter_post do
  desc "TODO"

  # IMPORTANT: This jobs has run every hour
  task schedule_tweets: :environment do
    # get all tweets (Might have to create a new model for tweets posted)
    # if 

    tweets = Tweet.all.where(published: false)
    tweets.each do |tweet|
      if Time.now.beginning_of_hour < tweet.publish_at &&
          tweet.publish_at < Time.now.end_of_hour
        TweetJob.perform_later(tweet)
        # Log that the job has been schedule for tweet id
      end
    end
  end

end


# The cron job will run each hour
# the rake rask will be executed each hour
# and the rake task will create the Job if a tweet is due to post within the next hour



## Bigger question: 
### Where to run the filter for the tweets? 
#### in the database with a query or in memory with rails ?