class RemoveContentColumnAddTipStepsTable < ActiveRecord::Migration
  def change
  	remove_column :tips, :content, :string
  end
end
