class Debate < ActiveRecord::Base
  # Accessible Attributes
  attr_accessible :topic, :question, :duration, :debateName1, :debateName2, :upvote1,
                  :upvote2

  # Associations

  # Validations

  # Model Methods
end
