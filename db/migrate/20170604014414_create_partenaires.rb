class CreatePartenaires < ActiveRecord::Migration[5.0]
  def change
    create_table :partenaires do |t|
      t.string :nom
      t.string :telephone
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end
