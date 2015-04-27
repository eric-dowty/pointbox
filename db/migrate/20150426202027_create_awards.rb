class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.references :user, index: true, foreign_key: true
      t.references :prize, index: true, foreign_key: true
    end
  end
end
