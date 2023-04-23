class CreateBodyData < ActiveRecord::Migration[6.0]
  def change
    create_table :body_data do |t|
      t.float :height,              null: false
      t.float :weight,              null: false
      t.integer :age,               null: false
      t.integer :sex_id,            null: false
      t.date :target_date,          null: false
      t.float :target_weight,       null: false
      t.integer :activity_level_id, null: false
      t.timestamps
    end
  end
end
