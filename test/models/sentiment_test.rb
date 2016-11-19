# == Schema Information
#
# Table name: sentiments
#
#  id              :integer          not null, primary key
#  world_leader_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class SentimentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
