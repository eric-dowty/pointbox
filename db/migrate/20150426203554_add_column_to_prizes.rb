class AddColumnToPrizes < ActiveRecord::Migration
  def change
    add_column :prizes, :available, :boolean
  end
end
