class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :email
  validates_presence_of :body, :email
  #
  #validates :body, presence: true, length: { maximum: 50 }
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, presence:   true,
  #          format:     { with: VALID_EMAIL_REGEX }
  #
  #
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
end
