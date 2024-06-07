class Tweet < ApplicationRecord
  enum frequency: { once: 0, daily: 1, weekly: 2 }
  belongs_to :user
  belongs_to :twitter_account

  # after_initialized do
  #   self.publish_at || 24.hours_from_now
  # end

  def published?
    tweet_id?
  end

  def publish_to_twitter!
    # tweet = twitter_account.client.update(body)
    # update(tweet_id: tweet.id, published: true)
    Rails.logger.warn "HELO :::: It POSTED to TWITTER"
  end
end
