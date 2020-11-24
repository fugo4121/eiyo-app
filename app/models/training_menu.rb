class TrainingMenu < ApplicationRecord
  has_many :exercises, dependent: :destroy

  def self.search3(search)
    if search != ""
      #食品名を検索
      TrainingMenu.where('menu LIKE(?)', "%#{search}%")
    else
      TrainingMenu.all
    end
  end
end
