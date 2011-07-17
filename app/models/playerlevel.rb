class Playerlevel < ActiveRecord::Base
  belongs_to :player
  belongs_to :level
end
