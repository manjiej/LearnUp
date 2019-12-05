class RemoveNumberOfMembersFromGroups < ActiveRecord::Migration[5.2]
  def change
    remove_column :groups, :number_of_members, :integer
  end
end
