class Movie < ActiveRecord::Base
  mount_uploader :cover_image, ImageUploader
end
