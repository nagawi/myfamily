class Animal < ActiveRecord::Base

mount_uploader :image_animal, ImageAnimalUploader
end
