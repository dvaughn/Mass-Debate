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


@debate1 = Debate.create(:topic => "Gun Control Laws", :duration => 120, :side1 => "AR-15s should be banned permanently from the U.S.", :side2 => "AR-15s Should be only available to gun collectors who have proven they are not mentally unstable", :debateName1=> "dvaughn64", :debateName2 => "chumbley5", :upvote1 => true, :upvote2 => true, :started => true, :finished => true)
@user1.debates << @debate1
@user2.debates << @debate1
