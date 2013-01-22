class CreateDebates < ActiveRecord::Migration
  def up
    create_table 'debates' do |t|
      t.text 'question'
      t.integer 'duration'
      t.text 'side1'
      t.text 'side2'
      t.string 'debateName1'
      t.string 'debateName2'
      t.boolean 'upvote1'
      t.boolean 'upvote2'
      t.boolean 'started'
      t.boolean 'finished'
      t.references :topic
    end
  end

  def down
    drop_table 'debates'
  end
end
