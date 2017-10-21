class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :nom
      t.string :prenom
      t.string :telephone
      t.integer :age
      t.boolean :admin
      t.boolean :adminActu
      t.boolean :adminEvent
      t.string :adresse
      t.boolean :sexe

      t.timestamps
    end
  end
end
