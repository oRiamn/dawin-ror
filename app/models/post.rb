class Post < ActiveRecord::Base
	belongs_to :user
	mount_uploader :picture, AvatarUploader
	validates :title, presence: true
end
