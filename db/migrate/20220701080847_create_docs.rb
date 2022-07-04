class CreateDocs < ActiveRecord::Migration[6.1]
  def change
    create_table :docs do |t|
      t.integer :user_id
      t.string :main
      t.string :sheet
      t.string :title
      t.string :deadline
      t.string :detail

      t.timestamps
    end
  end
end
