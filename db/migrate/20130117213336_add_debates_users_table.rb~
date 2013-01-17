class AddDebatesUsersTable < ActiveRecord::Migration

  def self.up
    create_table :debates_users do |t|
      t.integer :debate_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :debates_users
  end
end
