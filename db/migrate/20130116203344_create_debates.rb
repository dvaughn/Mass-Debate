class CreateDebates < ActiveRecord::Migration
  def up
    create_table 'debates' do |t|
      t.string 'topic'
      t.text 'question'
      t.integer 'duration'
      t.string 'debateName1'
      t.string 'debateName2'
      t.boolean 'upvote1'
      t.boolean 'upvote2'
    end
  end

  def down
    drop_table 'debates'
  end
end
