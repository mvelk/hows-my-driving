json.name 'world leaders'
json.count Tweet.all.count
json.set! 'children' do
  json.array! @leaders do |leader|
    json.name leader.name
    json.count Tweet.where(world_leader_id: leader.id).count
    sentiment = 'neutral'
    sentiment_score = 0.0
    unless leader.sentiments.empty?
      entity_arr = leader.sentiments.last.entities.where(text: leader.name)
      unless entity_arr.empty?
        entity = entity_arr.first
        sentiment = entity['sentiment_type'] if entity['sentiment_type']
        sentiment_score = entity['sentiment_score'].to_f if entity['sentiment_score']
      end
    end
    json.sentiment sentiment
    json.sentiment_score sentiment_score
  end
end
