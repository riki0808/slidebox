class AddSizeToDocs < ActiveRecord::Migration[6.1]
  def change
    add_column :docs, :size, :string
  end
end
