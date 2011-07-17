class CreatePlayerlevels < ActiveRecord::Migration
  def self.up
    create_table :playerlevels do |t|
      t.belongs_to :player
      t.belongs_to :level

      t.timestamps
    end
  end

  def self.down
    drop_table :playerlevels
  end
end
