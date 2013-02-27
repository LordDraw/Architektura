class CreateSerials < ActiveRecord::Migration
  def change
    create_table :serials do |t|
      t.string :episode
      t.string :director
      t.string :name
      t.integer :year
      t.integer :length

      t.timestamps
    end
  end
end
