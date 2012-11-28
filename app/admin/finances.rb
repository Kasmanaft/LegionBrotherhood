# coding: utf-8
ActiveAdmin.register Finance do

  menu :priority => 2

  filter :user_id
  filter :amount
  filter :details

  config.batch_actions = false
  #config.sort_order = "name_asc"

  scope :all, :default => true
  scope 'Сдано' do |finances|
    finances.where "amount>0"
  end
  scope 'Выдано' do |finances|
    finances.where "amount<0"
  end

  index do
    column "Пользователь" do |finance|
      link_to finance.user.name, admin_user_path(finance.user)
    end
    column :amount do |finance|
      raw "<span class='#{finance.amount>0 ? :green : :red}'>#{number_to_currency(finance.amount)}</span>"
    end  
    column :created_at
    column :details, :sortable => false
    default_actions
  end

  sidebar 'Касса', :partial => "sidebar"

  #form

  #show

end