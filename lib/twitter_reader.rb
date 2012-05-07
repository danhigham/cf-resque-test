class TwitterReader
	include HTTParty
	@queue = :twitter_reader

  def self.perform()
  	tweet = get("http://twitter.com/statuses/public_timeline.json").parsed_response.first

  	user = tweet["user"]["screen_name"]
  	content = tweet["text"]
  	posted_at = tweet["created_at"]

  	Tweet.create :account_name => user, :content => content, :posted_at => posted_at
  end
end