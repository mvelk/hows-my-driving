# == Schema Information
#
# Table name: tweets
#
#  id              :integer          not null, primary key
#  tweet_id        :decimal(, )
#  text            :string
#  world_leader_id :integer
#  language        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Tweet < ApplicationRecord
  def self.create_from_tweet(tweet)
    tweet = Tweet.new(text: tweet.text, language: tweet.lang, world_leader_id: tweet.user.screen_name, created_at: tweet.created_at)
    WorldLeader.all.each do |world_leader|
      if tweet.text.downcase.include?(world_leader.name.downcase)
        tweet.world_leader_id = world_leader.id
        tweet.save
        break
      end
    end
  end
end
