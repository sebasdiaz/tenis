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


class Player < ActiveRecord::Base
  has_many :playeremails
  has_many :playerphones
  has_many :playerlevels
  def to_s
    surname + forename
  end
end
