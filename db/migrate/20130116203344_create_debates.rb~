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
      t.text 'statement1'
      t.text 'statement2'
      t.text 'statement3'
      t.text 'statement4'
      t.text 'statement5'
      t.text 'statement6'
      t.boolean 'extend1'
      t.boolean 'extend2'
      t.references :topic
    end
  end

  def down
    drop_table 'debates'
  end
end
