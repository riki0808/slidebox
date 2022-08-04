class Doc < ApplicationRecord
  belongs_to :user
  
  mount_uploader :main, ImageUploader
  mount_uploader :pptx, ImageUploader
end
