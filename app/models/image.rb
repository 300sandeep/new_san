class Image < ApplicationRecord
	belongs_to :video
	mount_uploader :name, ImageUploader
end
