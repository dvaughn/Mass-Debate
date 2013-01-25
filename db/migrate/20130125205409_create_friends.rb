class CreateFriends < ActiveRecord::Migration
  def up
    create_table 'friends' do |t|
      t.references :user
    end
  end

  def down
  end
end
