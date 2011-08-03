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

require 'test_helper'

class PlayerlevelTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
