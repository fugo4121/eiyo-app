class Exercise < ApplicationRecord
  belongs_to :user
  belongs_to :training_menu

  def self.search4(search)
    if search != ""
      Exercise.where('start_time LIKE(?)', "%#{search}%")
    else
      Exercise.all
    end
  end
end
