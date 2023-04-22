class CreateBodyData < ActiveRecord::Migration[6.0]
  def change
    create_table :body_data do |t|

      t.timestamps
    end
  end
end
