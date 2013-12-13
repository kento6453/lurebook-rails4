class Maker < ActiveRecord::Base

  has_many :lure

  validates :name, presence: true
  validates :name, uniqueness: true
  
  # TODO: web_urlのURL正規表現チェック
  
end
