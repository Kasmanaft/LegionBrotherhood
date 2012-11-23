ActiveAdmin.register User do

  filter :nickname
  filter :vehicle_plate
  filter :vehicle

  config.batch_actions = false
  #config.sort_order = "name_asc"

  scope :all, :default => true
  scope :officer do |users|
    users.where "role='Officer'"
  end
  scope :prospect do |users|
    users.where "role='Prospect'"
  end
  scope :member do |users|
    users.where "role='Member'"
  end
  scope :support do |users|
    users.where "role='Support'"
  end

  index :as => :grid, :columns => 4 do |user|
    div do
      link_to(cl_image_tag(user.photo.identifier, :width => 200, :height => 200, :crop => :crop, :gravity => :face), admin_user_path(user))
    end
    a truncate(user.nickname), :href => admin_user_path(user)
  end

  form :partial => "form"

  show :title => :nickname

end