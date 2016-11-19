# == Schema Information
#
# Table name: sentiments
#
#  id              :integer          not null, primary key
#  world_leader_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Sentiment < ApplicationRecord
  has_many :concepts
  has_many :entities
end
