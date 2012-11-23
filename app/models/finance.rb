# coding: utf-8
class Finance < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :amount, :message=>'Введите сумму'
  validates_presence_of :user_id, :on=>:create, :message=>'Не указан пользователь'

  attr_accessible :user_id, :amount, :details

  def self.sdano
    Finance.where("amount>0").sum(:amount)
  end

  def self.vidano
    Finance.where("amount<0").sum(:amount).abs
  end
end
