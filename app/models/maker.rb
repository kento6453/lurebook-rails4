class Maker < ActiveRecord::Base

  include SentientUser
  track_who_does_it

  has_many :lure

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name_kana, presence: true
  validates :name_kana, uniqueness: true
  validates :name_kana,
            format: { with: /\A\p{Katakana}+|[0-9]*\z/, allow_blank: true , :message =>'はカタカナで入力して下さい。'}
  validates :web_url, {
      :allow_blank => true,
      :format => URI::regexp(%w(http https)),
  }
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" 
  validates_attachment :logo, presence: true

end
