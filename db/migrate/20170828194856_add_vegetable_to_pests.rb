class AddVegetableToPests < ActiveRecord::Migration[5.0]
  def change
    add_reference :pests, :vegetable, foreign_key: true
  end
end
