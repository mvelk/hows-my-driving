# == Schema Information
#
# Table name: entities
#
#  id              :integer          not null, primary key
#  entity_type     :string
#  text            :string
#  relevance_score :decimal(, )
#  sentiment_type  :string
#  sentiment_score :decimal(, )
#  reference_count :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  sentiment_id    :integer
#

require 'test_helper'

class EntityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
