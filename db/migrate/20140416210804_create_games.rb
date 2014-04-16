class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :boxshot

      t.timestamps
    end
  end
end
