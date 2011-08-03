# == Schema Information
# Schema version: 20110717033332
#
# Table name: players
#
#  id         :integer         not null, primary key
#  surname    :string(255)
#  forename   :string(255)
#  plays      :string(255)
#  residence  :string(255)
#  birthday   :date
#  height     :decimal(, )
#  weight     :decimal(, )
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
