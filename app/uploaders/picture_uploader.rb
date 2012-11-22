class PictureUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  def default_url
    "default_photo.jpg"
  end
end