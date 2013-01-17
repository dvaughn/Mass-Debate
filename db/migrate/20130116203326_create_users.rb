class CreateUsers < ActiveRecord::Migration
  def up
    create_table 'users' do |t|
      t.string 'debateName'
      t.string 'firstName'
      t.string 'lastName'
      t.string 'email'
      t.string 'password_digest'
      t.integer 'age'
      t.boolean 'gender'
      t.string 'location'
      t.string 'rank'
      t.string 'favoriteTopic'
      t.text 'about'
      t.boolean 'admin'
      t.integer 'avgDuration'
      t.integer 'numDebates'
      t.integer 'upvotes'
      # Still need password digest/confirmation (bcrypt)
      # Still need picture plugin
      # Still need references
    end
  end

  def down
    drop_table 'users'
  end
end

