class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.integer :user_id
      t.string :font
      t.string :main_color
      t.string :sub_color

      t.timestamps
    end
  end
end
