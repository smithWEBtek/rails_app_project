class AddMoreColumnsToUser < ActiveRecord::Migration[5.2]
   def change
  add_column :users, :name, :string
  add_column :users, :email, :string
  add_column :users, :image, :string
  add_column :users, :uid, :string
  # add as many columns as you need

  end
end
