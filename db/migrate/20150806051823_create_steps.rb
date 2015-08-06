class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :heading
      t.string :image
      t.string :content
      t.integer :displayIndex

      t.timestamps null: false
    end
  end
end
