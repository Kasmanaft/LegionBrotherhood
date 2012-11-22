class User < ActiveRecord::Base
  attr_accessible :email, :name, :nickname, :photo_cache, :photo, :vehicle, :vehicle_photo_cache, :vehicle_photo,
  					:role, :birthday, :passport, :passport_authority, :city, :address, :driver_license, 
  					:phone_mobile, :phone_home, :spouse, :spouse_phone, :father, :father_phone, :mother,
  					:mother_phone, :occupation, :skype, :icq, :another_contacts, :vehicle_license, :vehicle_plate,
  					:vehicle_vin, :vehicle_year, :comments, :remove_photo, :remove_vehicle_photo 

  ROLES = ['Support', 'Member', 'Prospect', 'Officer', 'Vice President', 'President']

  mount_uploader :photo, PictureUploader
  mount_uploader :vehicle_photo, PictureUploader
end
