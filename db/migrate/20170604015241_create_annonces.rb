class CreateAnnonces < ActiveRecord::Migration[5.0]
  def change
    create_table :annonces do |t|
      t.string :titre
      t.string :description
      t.date :date_debut
      t.date :date_fin
      t.boolean :status
      t.references :user, foreign_key: true
      t.references :categorie_annonce, foreign_key: true

      t.timestamps
    end
  end
end
