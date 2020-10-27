class CreateHealths < ActiveRecord::Migration[6.0]
  def change
    create_table :healths do |t|
      t.date    :recording_date,    null: false
      t.integer :sleep_time,        null: false
      t.integer :burn_kcal,         null: false
      t.text    :memo,              null: false
      t.integer :user_id,           null: false
      t.timestamps
    end
  end
end
