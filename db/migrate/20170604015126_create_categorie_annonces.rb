class CreateCategorieAnnonces < ActiveRecord::Migration[5.0]
  def change
    create_table :categorie_annonces do |t|
      t.string :nom
      t.string :description

      t.timestamps
    end
  end
end
