class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :tips, :content, :headline
  end
end
