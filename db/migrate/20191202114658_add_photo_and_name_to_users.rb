class AddPhotoAndNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :photo, :string
    add_column :users, :name, :string
  end
end
