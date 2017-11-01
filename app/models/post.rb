class Post < ActiveRecord::Base
    mount_upload :image, ImageUploader
    belongs_to :user
    
    validates :image, presence: true
    validates :content, presence: true
end
