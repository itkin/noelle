# -*- encoding : utf-8 -*-
class Subscriber < ActiveRecord::Base

  after_save :send_report

  validates_presence_of :name, :email

  validates_uniqueness_of :email, :unless => "email.blank?"

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :allow_blank => true

  def send_report
    Newsletter.report(self).deliver
  end

end
