# encoding: UTF-8
class Rent < ActiveRecord::Base
  validates_date :date_from, :on_or_before => :date_to,
                             :on_or_before_message => "穿越啦！"
  belongs_to :user

end
