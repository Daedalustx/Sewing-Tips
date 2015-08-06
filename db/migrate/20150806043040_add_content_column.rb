class AddContentColumn < ActiveRecord::Migration
  def change
  	add_column :tips, :content, :string
  end
end
