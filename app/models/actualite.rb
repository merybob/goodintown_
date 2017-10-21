class Actualite < ApplicationRecord
  belongs_to :user
  belongs_to :categorie_actu

  has_attached_file :photo , :styles => {:large => "600x600>", :medium => "300x300>", :thumb => "150x150#"}
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
