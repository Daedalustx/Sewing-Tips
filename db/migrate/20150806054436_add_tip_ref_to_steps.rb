class AddTipRefToSteps < ActiveRecord::Migration
  def change
    add_reference :steps, :tip, index: true, foreign_key: true
  end
end
