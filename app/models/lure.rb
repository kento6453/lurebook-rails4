class Lure < ActiveRecord::Base

  include SentientUser
  track_who_does_it

  belongs_to :maker

  #has_and_belongs_to_many :users
  has_many :users_lures
  has_many :users, :through => :users_lures
  
  validates :name, presence: true
  validates :name_kana, presence: true
  validates :name_kana,
            format: { with: /\A\p{Katakana}+|[0-9]*\z/, allow_blank: true , :message =>'はカタカナで入力して下さい。'}
  validates :genre, presence: true
  validates :kind, presence: true
  
  # TODO: まともなvalidationが必要かも validates :maker_id, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :weight, numericality: {greater_than_or_equal_to: 0}
  validates :name, uniqueness: true
  validates :name_kana, uniqueness: true

  has_attached_file :photo, :styles => { :medium => '600x400>', :thumb => "120x80>" }, :default_url => "/images/:style/missing.png"
  validates_attachment :photo, presence: true
#  validates_with AttachmentPresenceValidator, :attributes => :photo


  def genre_list
    {"1" => 'シーバス', "2" => 'バス', "3" => "青物",
     "4" => "フラットフィッシュ", "6" => "アジ"}
  end

  def genre_name
    self.genre_list[self.genre] || ''
  end

  def kind_list
    {
      "1" => 'フローティングミノー',
      "2" => 'バイブレーション',
      "3" => 'シンキングペンシル',
      "4" => 'シンキングミノー',
      "5" => 'トップウォーター・ポッパー',
      "6" => 'ポッパー',
      "7" => 'メタルジグ',
      "8" => 'ビッグベイト',
      "9" => 'ジグヘッド',
      "10" => 'ワーム'
    }
  end

  def kind_name
    self.kind_list[self.kind] || ''
  end


end
