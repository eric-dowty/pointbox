class AddPaperclipFieldsToPrizes < ActiveRecord::Migration
  def change
    add_column :prizes, :image_file_name, :string
    add_column :prizes, :image_content_type, :string
    add_column :prizes, :image_file_size, :integer
    add_column :prizes, :image_updated_at, :datetime
  end
end
