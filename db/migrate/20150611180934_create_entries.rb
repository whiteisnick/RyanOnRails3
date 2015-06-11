class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.references :collection
      t.timestamps null: false
    end
  end
end
