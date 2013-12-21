class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
       
  has_many :users_lures
  has_many :lures, :through => :users_lures
  
#  attr_accessible :avatar
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.jpg"
  validates_attachment :avatar, presence: true
#    content_type: { content_type: ["image/jpg", "image/png"] },
#    size: { less_than: 2.megabytes }

  validates_with AttachmentPresenceValidator, :attributes => :avatar
    
end
