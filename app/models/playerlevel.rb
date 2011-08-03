# == Schema Information
# Schema version: 20110717033332
#
# Table name: playerlevels
#
#  id         :integer         not null, primary key
#  player_id  :integer
#  level_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Playerlevel < ActiveRecord::Base
  belongs_to :player
  belongs_to :level
end
