json.array! @sentiments do |sentiment|
  json.created_at sentiment.created_at
  json.set! 'concepts' do
    json.partial! 'api/world_leaders/concept', collection: sentiment.concepts, as: :concept
  end
  json.set! 'entities' do
    json.partial! 'api/world_leaders/entity', collection: sentiment.entities, as: :entity
  end
end
