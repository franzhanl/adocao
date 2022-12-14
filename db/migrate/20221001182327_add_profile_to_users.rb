class AddProfileToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :gender, :string
    add_column :users, :birthday, :date
    add_column :users, :phone, :string
  end
end
