# movie model to save and update the movies 
class Movie < ActiveRecord::Base
  searchkick
  has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  belongs_to :user
  has_many :reviews
end
