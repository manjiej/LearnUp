class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :title
      t.text :description
      t.string :organizer
      t.date :timeline
      t.string :location
      t.integer :number_of_members
      t.references :user, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
