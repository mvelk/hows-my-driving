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

require 'test_helper'

class WorldLeaderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
