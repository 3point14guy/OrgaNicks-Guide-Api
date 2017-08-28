class AddUserToVegetables < ActiveRecord::Migration[5.0]
  def change
    add_reference :vegetables, :user, foreign_key: true
  end
end
