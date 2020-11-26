class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.string     :menu,     null: false
      t.string     :explain,  null: false
      t.integer    :kcal,     null: false
      t.timestamps
    end
  end
end
