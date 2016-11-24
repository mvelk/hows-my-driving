require 'uri'
require 'httparty'
require "#{Rails.root}/lib/alchemyapi"

namespace :sentiment do
  desc "Rake task to crunch twitter sentiment"
  task crunch: :environment do
    alchy = AlchemyAPI.new
    world_leaders = WorldLeader.all
    world_leaders.each do |world_leader|
      puts "Crunching sentiment for #{world_leader.name}"
      tweets = Tweet.where(world_leader_id: world_leader.id).limit(3000)
      tweet_text = tweets.map(&:text).join(", ")
      query_string=URI.encode(world_leader.name.downcase)
      result = alchy.combined('text', tweet_text, { extract: 'entities,keywords,concept', sentiment: 1 })
      if result['entities']
        sentiment = Sentiment.create(world_leader_id: world_leader.id)
        result['concepts'].each do |concept|
          Concept.create(
          sentiment_id: sentiment.id,
          name: concept['text'],
          relevance_score: concept['relevance'].to_f,
          encyclopedia_reference: concept['dbpedia']
          )
        end

        result['entities'].each do |entity|
          if entity['sentiment']
            Entity.create(
            sentiment_id: sentiment.id,
            entity_type: entity['type'],
            text: entity['text'],
            relevance_score: entity['relevance'].to_f,
            sentiment_type: entity['sentiment']['type'],
            sentiment_score: entity['sentiment']['score'].to_f,
            reference_count: entity['count'].to_i
            )
          end
        end
      end
    end
  end
end
