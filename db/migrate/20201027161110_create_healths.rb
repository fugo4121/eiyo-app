class CreateHealths < ActiveRecord::Migration[6.0]
  def change
    create_table :healths do |t|
      t.integer :sleep_time_id,     null: false
      t.integer :burn_kcal,         null: false
      t.text    :memo,              null: false
      t.date    :recording_date,    null: false
      t.integer :user_id,           null: false
      t.timestamps
    end
  end
end
