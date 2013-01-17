class User < ActiveRecord::Base
  # Accessible Attributes
  attr_accessible :debateName, :password, :password_confirmation, :firstName, :lastName, :email,
                  :age, :gender, :admin, :avgDuration, :numDebates, :upvotes
  has_secure_password

  # Associations
  has_and_belongs_to_many :debates

  # Validations
  before_validation { self.debateName.downcase! }
  validates :debateName, :presence => true, :uniqueness => true, :on => :create
  validates :email, :presence => true, :uniqueness => true, :on => :create
  validates :password, :presence => true, :confirmation => true, :length => { :minimum => 6 }, :on => :create
  validates :password_confirmation, :presence => true, :on => :create

  # Model Methods
end
