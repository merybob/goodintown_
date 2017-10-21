class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :titre
      t.string :description
      t.date :date_debut
      t.date :date_fin
      t.datetime :heure_debut
      t.datetime :heure_fin
      t.boolean :status
      t.string :picture
      t.string :lieu
      t.integer :nombrePlace
      t.integer :note
      t.references :user, foreign_key: true
      t.references :categorie_event, foreign_key: true
      t.references :structure, foreign_key: true

      t.timestamps
    end
  end
end
