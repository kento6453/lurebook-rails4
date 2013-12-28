class UsersLure < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :lure

  # TODO: 各項目のvalidate
  
  has_attached_file :photo, :styles => { :medium => "600x400>", :thumb => "120x80>" }, :default_url => "/images/:style/missing.png"

#                    :convert_options => {:medium => "-gravity center -crop 300x200", :thumb => "-gravity center -crop 120x80+0+0"}
  validates_attachment :photo, presence: true
  validates_with AttachmentPresenceValidator, :attributes => :photo

  def priority_list
    {"1" => '１軍', "2" => '２軍', "3" => "押入れ"}
  end

  def priority_name
    self.priority_list[self.priority] || ''
  end

end
