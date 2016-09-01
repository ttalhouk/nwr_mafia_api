class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.boolean :mafia_won, default: false
      t.string :description
      t.string :game_url
      t.string :game_image
      t.boolean  :complete, default: false

      t.timestamps null: false
    end
  end
end
