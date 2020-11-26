class Food < ApplicationRecord
  has_many :meals, dependent: :destroy

  def self.search(search)
    if search != ""
      #食品名を検索
      Food.where('menu LIKE(?)', "%#{search}%")
    else
      Food.all
    end
  end

end
