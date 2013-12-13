class UsersLure < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :lure
  
end
