class CreateCategorieEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :categorie_events do |t|
      t.string :nom
      t.string :description

      t.timestamps
    end
  end
end
