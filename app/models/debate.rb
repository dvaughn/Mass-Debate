class Debate < ActiveRecord::Base
  # Accessible Attributes
  attr_accessible :question, :duration, :side1, :side2, :debateName1, :debateName2, :upvote1,
                  :upvote2, :started, :finished

  # Associations
  has_and_belongs_to_many :users
  belongs_to :topic

  # Validations

  # Model Methods
end
