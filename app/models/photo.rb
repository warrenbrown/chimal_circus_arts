class Photo < ActiveRecord::Base
  has_attached_file :image, styles: { image_index: "300x300>", thumb: "100x100>" }, default_url: "http://placehold.it/750x450"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
