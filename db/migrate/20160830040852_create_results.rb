class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :player_id
      t.integer :game_id
      t.boolean :mafia

      t.timestamps null: false
    end
  end
end
