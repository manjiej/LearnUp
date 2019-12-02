class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :category
      t.integer :number_of_learners

      t.timestamps
    end
  end
end
