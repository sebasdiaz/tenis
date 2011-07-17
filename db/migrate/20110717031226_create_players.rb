class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :surname
      t.string :forename
      t.string :plays
      t.string :residence
      t.date :birthday
      t.decimal :height
      t.decimal :weight

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
