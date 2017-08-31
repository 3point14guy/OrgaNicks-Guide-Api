class CreateDinnerAndDiners < ActiveRecord::Migration[5.0]
  def change
    create_table :dinner_and_diners do |t|
      t.references :vegetables, foreign_key: true
      t.references :pests, foreign_key: true

      t.timestamps
    end
  end
end
