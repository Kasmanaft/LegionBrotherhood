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
    column "User" do |finance|
      link_to finance.user.name, admin_user_path(finance.user)
    end
    column :amount
    column :created_at
    column :details, :sortable => false
    default_actions
  end

  sidebar :finances do
    para "Всего сдано: #{Finance.sdano}"
    para "Всего выдано: #{Finance.vidano}"
    para "Касса: #{Finance.sdano - Finance.vidano}"
  end

  #form

  #show

end