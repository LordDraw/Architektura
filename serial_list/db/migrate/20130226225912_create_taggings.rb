class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.belongs_to :tag
      t.belongs_to :serial

      t.timestamps
    end
    add_index :taggings, :tag_id
    add_index :taggings, :serial_id
  end
end
