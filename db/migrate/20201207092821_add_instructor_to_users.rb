class AddInstructorToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :instructor, :boolean
  end
end
