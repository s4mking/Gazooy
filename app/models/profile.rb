class Profile < ApplicationRecord
    belongs_to :user
    mount_uploader :avatar, AvatarUploader
    require "mini_magick"
    include CarrierWave::MiniMagick

 # process resize_to_fit: [800, 800]

 # version :thumb do
   # process resize_to_fill: [200,200]
 # end

end