class CreateGardens < ActiveRecord::Migration[5.0]
  def change
    create_table :gardens do |t|
      t.references :vegetable, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
