class UsersLure < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :lure

  # TODO: 各項目のvalidate
  
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" 
  validates_attachment :photo, presence: true
  validates_with AttachmentPresenceValidator, :attributes => :photo

  
end
