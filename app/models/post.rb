class Post < ActiveRecord::Base
	mount_uploader :picture, AvatarUploader
	validates :title, presence: true
end
