class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string   :menu,            null: false
      t.string   :explain,         null: false
      t.integer  :kcal,            null: false
      t.float    :protein,         null: false, default: 0
      t.float    :lipid,           null: false, default: 0
      t.float    :carb,            null: false, default: 0
      t.float    :calcium,         null: false, default: 0
      t.float    :iron,            null: false, default: 0
      t.float    :vitamin_a,       null: false, default: 0
      t.float    :vitamin_b1,      null: false, default: 0
      t.float    :vitamin_b2,      null: false, default: 0
      t.float    :vitamin_c,       null: false, default: 0
      t.float    :vitamin_e,       null: false, default: 0
      t.float    :fiber,           null: false, default: 0
      t.float    :salt,            null: false, default: 0
      t.timestamps
    end
  end
end
