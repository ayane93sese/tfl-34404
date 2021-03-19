class Task < ApplicationRecord
  #↓アクティブハッシュ使う時のモジュールで、記述しなきゃいけないやつ
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :rank
  belongs_to :status

  belongs_to :user

  validates :title, presence:true
  
  with_options numericality: { other_than: 1, message: "select" } do
    validates :category_id
    validates :rank_id
    validates :status_id
  end
end

