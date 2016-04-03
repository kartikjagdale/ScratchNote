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

class Scratch < ActiveRecord::Base
	belongs_to :user
end
