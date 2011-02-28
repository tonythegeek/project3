class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :user, :email, :unique => true
  end

  def self.down
    remove_index :user, :email
  end
end
