# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@user1 = User.create(:debateName => "dvaughn64", :email => "dvaughn@mit.edu", :password => "massdebate", :password_confirmation => "massdebate", :firstName => "Derek", :lastName => "Vaughn",
                     :age => 20, :gender => true, :admin => false, :avgDuration => 120, :numDebates => 1, :upvotes => 1)
@user2 = User.create(:debateName => "chumbley5", :email => "chumbley@mit.edu", :password => "massdebate", :password_confirmation => "massdebate", :firstName => "Alexander", :lastName => "Chumbley",
                     :age => 20, :gender => true, :admin => false, :avgDuration => 120, :numDebates => 1, :upvotes => 1)
@user3 = User.create(:debateName => "asaj", :email => "asaj@mit.edu", :password => "massdebate", :password_confirmation => "massdebate", :firstName => "Asa", :lastName => "Oines",
                     :age => 20, :gender => true, :admin => false, :avgDuration => 120, :numDebates => 1, :upvotes => 1)

@topic1 = Topic.create(:name => "Politics", :description => "The cause for modern debates as we know them, Politics is the largest topic")
@topic2 = Topic.create(:name => "Religion", :description => "The most controversial topic. Play nice.")
@topic3 = Topic.create(:name => "Sports", :description => "Grab a beer and test your sport's wit and persuasion")
@topic4 = Topic.create(:name => "Current Events", :description => "Watch the news too often? We got a covered.")
@topic5 = Topic.create(:name => "Technology", :description => "At least you know how to work a computer, but can you hang with the real geeks?")
@topic6 = Topic.create(:name => "Philosophy", :description => "Et tu brute? Or something like that...")
@topic7 = Topic.create(:name => "Entertainment", :description => "Talking about these celebrities makes me want to do naught but mass-debate")
@topic8 = Topic.create(:name => "Other", :description => "Anything that is not covered by the defined topics")


@debate1 = Debate.create(:duration => 120, :side1 => "AR-15s should be banned permanently from the U.S.", :side2 => "AR-15s Should be only available to gun collectors who have proven they are not mentally unstable", :debateName1=> "dvaughn64", :debateName2 => "chumbley5", :upvote1 => true, :upvote2 => true, :started => true, :finished => true)

@topic1.debates << @debate1

@user1.debates << @debate1
@user2.debates << @debate1
