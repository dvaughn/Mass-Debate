class CreateFriends < ActiveRecord::Migration
  def up
    create_table 'friends' do |t|
      t.integer "friend_id"
      t.string "friend_name"
      t.references :user
    end
  end

  def down
  end
end
