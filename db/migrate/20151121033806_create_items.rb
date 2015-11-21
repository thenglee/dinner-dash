class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 6, scale: 2
      t.boolean :available

      t.timestamps null: false
    end
  end
end
