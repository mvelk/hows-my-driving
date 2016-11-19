# == Schema Information
#
# Table name: world_leaders
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  country_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class WorldLeader < ApplicationRecord
  belongs_to :country
  has_many :sentiments
end
