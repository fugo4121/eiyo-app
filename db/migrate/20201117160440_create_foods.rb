class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string     :food_name,     null: false
      t.string     :explain,       null: false
      t.integer    :kcal,          null: false
      t.integer    :protein,       null: false
      t.integer    :lipid,         null: false
      t.integer    :carb,          null: false
      t.integer    :calcium,       null: false
      t.integer    :iron,          null: false
      t.integer    :vitamin_a,     null: false
      t.integer    :vitamin_b1,    null: false
      t.integer    :vitamin_b2,    null: false
      t.integer    :vitamin_c,     null: false
      t.integer    :vitamin_e,     null: false
      t.integer    :fiber,         null: false
      t.integer    :salt,          null: false
      t.timestamps
    end
  end
end
