class CreateFortunes < ActiveRecord::Migration
  def change
    create_table :fortunes do |t|
      t.text :nazwa
      t.integer :ilosc
      t.decimal :cena
      t.text :opis

      t.timestamps
    end
  end
end
