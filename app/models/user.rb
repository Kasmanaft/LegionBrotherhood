class User < ActiveRecord::Base
  attr_accessible :name, :nickname, :role, :birthday, :passport, :passport_authority, :city, :address, 
            :photo, :driver_license, :occupation, 

            :email, :phone_mobile, :phone_home, :skype, :icq, :another_contacts, 

            :spouse, :spouse_phone, :father, :father_phone, :mother, :mother_phone,

            :vehicle, :vehicle_photo, :vehicle_license, :vehicle_plate,
  					:vehicle_vin, :vehicle_year,

            :remove_photo, :remove_vehicle_photo, :photo_cache, :vehicle_photo_cache 

  ROLES = ['Support', 'Member', 'Prospect', 'Officer', 'Vice President', 'President']

  mount_uploader :photo, PictureUploader
  mount_uploader :vehicle_photo, PictureUploader

  has_many :finances

  validates_presence_of :name
  
end
