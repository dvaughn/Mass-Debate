class Friend < ActiveRecord::Base
  # Accessible Attributes
  attr_accessible :user

  # Associations
  belongs_to :user
  
  # Validations

  # Model Methods

end
