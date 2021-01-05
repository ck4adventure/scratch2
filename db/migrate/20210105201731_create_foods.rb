class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.text :description
      t.integer :category, default: 99
      t.timestamps
    end

    add_index :foods, :name, unique: true
    add_index :foods, :category
  end
end
