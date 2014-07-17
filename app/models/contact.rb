class Contact < ActiveRecord::Base
  attr_accessible :body, :email, :name, :phnumber, :title
  default_scope order: 'contacts.created_at DESC'
  validates  :body, :email, :name, presence:true
end
