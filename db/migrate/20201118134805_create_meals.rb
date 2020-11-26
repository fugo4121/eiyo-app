class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string    :period,            null: false
      t.integer   :num,               null: false
      t.date      :start_time,        null: false
      t.integer   :food_id,           null: false
      t.integer   :user_id,           null: false
      t.timestamps
    end
  end
end
