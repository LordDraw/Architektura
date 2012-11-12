class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :bar

      t.timestamps
    end
  end
end
