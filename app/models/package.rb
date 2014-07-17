class Package < ActiveRecord::Base
  attr_accessible :activities, :address, :budget, :details, :email, :name, :places, :stay
end
