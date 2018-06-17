class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    mount_uploader :image, PostImageUploader
    paginates_per 5
end
