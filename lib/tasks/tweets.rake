require 'twitter'

namespace :tweets do
  desc "Pulls relevant tweets from twitter"
  task collect: :environment do
    client = Twitter::Streaming::Client.new do |config|
      config.consumer_key       = ENV["TWITTER_KEY"]
      config.consumer_secret    = ENV["TWITTER_SECRET"]
      config.access_token        = ENV["TWITTER_OAUTH_KEY"]
      config.access_token_secret = ENV["TWITTER_OAUTH_SECRET"]
    end

    topics = WorldLeader.all.map(&:name)
    client.filter(track: topics.join(",")) do |object|
      if object.is_a?(Twitter::Tweet)
        puts object.text
        Tweet.create_from_tweet(object)
      end
    end
    # WorldLeader.all.shuffle.each do |leader|
    #   client.search(leader.name, result_type: "recent").collect do |tweet|
    #     Tweet.create_from_tweet(tweet) if tweet
    #   end
    #   sleep(120)
    # end
  end

end
