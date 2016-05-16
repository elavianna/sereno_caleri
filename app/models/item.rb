class Item < ActiveRecord::Base
  belongs_to :category
  has_attached_file :image, styles: { small: "64x64#", med: "100x100>", large: "200x200>" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }, :presence => true,  :size => { :in => 0..1000.kilobytes }
end
