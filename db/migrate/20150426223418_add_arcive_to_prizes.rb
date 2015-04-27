class AddArciveToPrizes < ActiveRecord::Migration
  def change
    add_column :prizes, :archive, :boolean, default: false  
  end
end
