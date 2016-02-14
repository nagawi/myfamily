class Fish < ActiveRecord::Base

 self.table_name = 'fishes'

mount_uploader :image_fish, ImageFishUploader

end
