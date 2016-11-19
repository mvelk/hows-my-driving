# == Schema Information
#
# Table name: concepts
#
#  id                     :integer          not null, primary key
#  name                   :string
#  relevance_score        :decimal(, )
#  encyclopedia_reference :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  sentiment_id           :integer
#

require 'test_helper'

class ConceptTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
