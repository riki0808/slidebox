class AddPptxToDoc < ActiveRecord::Migration[6.1]
  def change
    add_column :docs, :pptx, :string
  end
end
