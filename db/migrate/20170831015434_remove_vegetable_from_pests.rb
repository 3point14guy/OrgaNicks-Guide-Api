class RemoveVegetableFromPests < ActiveRecord::Migration[5.0]
  def change
    remove_reference :pests, :vegetable, foreign_key: true
  end
end
