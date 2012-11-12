class CreateSonpps < ActiveRecord::Migration
  def change
    create_table :sonpps do |t|
      t.string :title

      t.timestamps
    end
  end
end
