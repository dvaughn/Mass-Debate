class CreateTopics < ActiveRecord::Migration
  def up
    create_table 'topics' do |t|
      t.string 'name'
      t.text 'description'
    end
  end

  def down
    drop_table 'topics'
  end
end
