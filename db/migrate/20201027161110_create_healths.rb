class CreateHealths < ActiveRecord::Migration[6.0]
  def change
    create_table :healths do |t|
      t.float     :weight,            null: false
      t.integer   :sleep_time_id,     null: false
      t.text      :memo
      t.datetime  :start_time,        null: false
      t.integer   :user_id,           null: false
      t.timestamps
    end
  end
end
