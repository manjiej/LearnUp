class CreateSubject < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :category
      t.integer :number_of_learners
    end
  end
end
