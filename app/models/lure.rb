class Lure < ActiveRecord::Base
  
  belongs_to :maker
  
  #has_and_belongs_to_many :users
  has_many :users_lures
  has_many :users, :through => :users_lures
  
  validates :name, presence: true
  validates :genre, presence: true
  validates :kind, presence: true
  
  # TODO: まともなvalidationが必要かも validates :maker_id, presence: true
  validates :price, presence: true
  validates :weight, presence: true

  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :weight, numericality: {greater_than_or_equal_to: 0}

  validates :name, uniqueness: true

  # TODO: genreとmakerにリスト値以外入らないようにする

end
