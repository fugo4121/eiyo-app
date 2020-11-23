class Meal < ApplicationRecord
  belongs_to :user
  belongs_to :food

  def self.search2(search)
    if search != ""
      Meal.where('start_time LIKE(?)', "%#{search}%")
    else
      Meal.all
    end
  end

end
