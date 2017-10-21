class CreateCommentaireEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :commentaire_events do |t|
      t.text :message
      t.references :event, foreign_key: true
      t.references :user
      t.string :anonyme
      t.boolean :status

      t.timestamps
    end
  end
end
