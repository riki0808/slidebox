class AddDocContentToDocs < ActiveRecord::Migration[6.1]
  def change
    add_column :docs, :g_slide, :string
    add_column :docs, :content, :string
    add_column :docs, :scene, :string
    add_column :docs, :shower, :string
    add_column :docs, :deplication, :string
    add_column :docs, :format, :string
    add_column :docs, :main_color, :string
    add_column :docs, :sub_color, :string
    add_column :docs, :font, :string
  end
end
