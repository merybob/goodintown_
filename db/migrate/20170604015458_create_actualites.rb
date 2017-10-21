class CreateActualites < ActiveRecord::Migration[5.0]
  def change
    create_table :actualites do |t|
      t.string :titre
      t.text :description
      t.string :picture
      t.boolean :status
      t.references :user, foreign_key: true
      t.references :categorie_actu, foreign_key: true

      t.timestamps
    end
  end
end
