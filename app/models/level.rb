# == Schema Information
# Schema version: 20110717033332
#
# Table name: levels
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Level < ActiveRecord::Base
  has_many :playerlevels

  def to_s
    name
  end
end
