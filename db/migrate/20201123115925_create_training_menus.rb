class CreateTrainingMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :training_menus do |t|
      t.string     :menu,     null: false
      t.string     :explain,  null: false
      t.integer    :kcal,     null: false
      t.timestamps
    end
  end
end
