class Maker < ActiveRecord::Base

  has_many :lure

  validates :name, presence: true
  validates :name, uniqueness: true
  
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" 
  validates_attachment :logo, presence: true
  validates_with AttachmentPresenceValidator, :attributes => :logo  
  
  # TODO: web_urlのURL正規表現チェック
  
end
