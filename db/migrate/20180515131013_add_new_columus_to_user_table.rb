class AddNewColumusToUserTable < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :birthday, :date
    add_column :users, :photo, :string
    add_column :users, :gender, :integer
  end
end
