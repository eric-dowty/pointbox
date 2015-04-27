class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :points
      t.integer :role, default: 0
      t.string :password_digest
    end
  end
end
