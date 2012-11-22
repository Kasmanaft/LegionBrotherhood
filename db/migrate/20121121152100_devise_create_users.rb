class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|

      t.string :name
      t.string :nickname
      t.string :role
      t.date :birthday

      t.string :passport
      t.string :passport_authority
      t.string :city
      t.string :address
      t.string :driver_license
      t.string :phone_mobile
      t.string :phone_home
      t.string :spouse
      t.string :spouse_phone
      t.string :father
      t.string :father_phone
      t.string :mother
      t.string :mother_phone
      t.string :photo
      t.string :occupation
      t.string :skype
      t.string :icq
      t.text :another_contacts

      t.string :vehicle_license
      t.string :vehicle
      t.string :vehicle_plate
      t.string :vehicle_photo
      t.string :vehicle_vin
      t.integer :vehicle_year

      t.string :email
    end
  end
end
