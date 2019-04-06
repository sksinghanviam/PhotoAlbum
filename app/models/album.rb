class Album < ApplicationRecord
    #mount_uploader :image, ImageUploader
    has_one_attached :image
    validates :title, presence: true, length: { minimum: 5 }
end
