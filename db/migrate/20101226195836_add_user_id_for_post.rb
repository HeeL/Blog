class AddUserIdForPost < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.references :user
    end
  end

  def self.down
    change_table :posts do |t|
      remove_column  :user
    end
  end
end
