class RemoveUserFromVegetables < ActiveRecord::Migration[5.0]
  def change
    remove_reference :vegetables, :user, foreign_key: true
  end
end
