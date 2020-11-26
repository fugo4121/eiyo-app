class Training < ApplicationRecord
  has_many :exercises, dependent: :destroy

  def self.search3(search)
    if search != ""
      #食品名を検索
      Training.where('menu LIKE(?)', "%#{search}%")
    else
      Training.all
    end
  end
end
