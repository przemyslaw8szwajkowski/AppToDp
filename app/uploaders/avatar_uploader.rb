# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave

  process :convert => 'png'
  process :tags => ['post_picture']

  version :standard do
    process :resize_to_fill => [100, 150, :north]
  end

  version :thumbnail do
    resize_to_fit(50, 50)
  end
  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

# rake dropbox:authorize APP_KEY=6d9h3e0rldberxb APP_SECRET=4ekrq7oxssb2abf ACCESS_TYPE=dropbox

# access_token: pyont1en5sqv35fc
# access_token_secret: spq6iwz3aeig8lh
# user_id: 323943419

#  CarrierWave.configure do |config|
#   config.dropbox_app_key = ENV["6d9h3e0rldberxb"]
#   config.dropbox_app_secret = ENV["4ekrq7oxssb2abf"]
#   config.dropbox_access_token = ENV["pyont1en5sqv35fc"]
#   config.dropbox_access_token_secret = ENV["spq6iwz3aeig8lh"]
#   config.dropbox_user_id = ENV["323943419"]
#   config.dropbox_access_type = "dropbox"
# end

version :display do
    process :eager => true
    process :resize_to_fill => [200, 200, :north]
  end

  version :thumbnail do
    process :eager => true
    process :resize_to_fit => [50, 50]
  end

end
