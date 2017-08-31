class AddCommentsToGardens < ActiveRecord::Migration[5.0]
  def change
    add_column :gardens, :comments, :text
  end
end
