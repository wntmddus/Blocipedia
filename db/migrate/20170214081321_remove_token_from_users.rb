class RemoveTokenFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :remember_token
  end
end
