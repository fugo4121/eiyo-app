class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.integer   :set,               null: false
      t.date      :start_time,        null: false
      t.integer   :training_id,       null: false
      t.integer   :user_id,           null: false
      t.timestamps
    end
  end
end
