class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :city, :string
    add_column :users, :form, :json
    add_column :users, :score, :integer
  end
end
