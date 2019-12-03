class AddPhotoAndNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string
    add_column :users, :name, :string
  end
end
