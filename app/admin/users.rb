ActiveAdmin.register User do

  menu :priority => 1

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
      link_to(photo_preview(user.photo, :face=>true), admin_user_path(user))
    end
    h6 user.role
    div do
     a truncate(user.name), :href => admin_user_path(user)
    end
    a truncate(user.nickname), :href => admin_user_path(user)
  end

  form :partial => "form"

  show :title => :nickname do
    render "show"
    active_admin_comments
  end

end