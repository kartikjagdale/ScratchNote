# == Schema Information
#
# Table name: scratches
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'test_helper'

class ScratchesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
