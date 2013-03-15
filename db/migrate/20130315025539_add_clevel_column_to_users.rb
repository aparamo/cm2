class AddClevelColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :clevel, :integer
  end
end
