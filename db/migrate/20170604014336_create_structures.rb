class CreateStructures < ActiveRecord::Migration[5.0]
  def change
    create_table :structures do |t|
      t.string :nom
      t.string :description
      t.string :adresse
      t.string :telephone
      t.string :email
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
