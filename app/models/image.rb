class Image < ActiveRecord::Base
  has_attached_file :image
  validates_attachment :image,
    styles: { medium: "300x300>", thumb: "100x100>" },
    content_type: { content_type: "image/png" }
end
