class ChangePasswordHashToPasswordDigest < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :password_hash
    add_column :users, :password_digest, :string
  end
end