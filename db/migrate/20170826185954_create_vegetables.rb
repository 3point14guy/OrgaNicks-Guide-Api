class CreateVegetables < ActiveRecord::Migration[5.0]
  def change
    create_table :vegetables do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.text :comments

      t.timestamps
    end
  end
end
