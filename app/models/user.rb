class User < ActiveRecord::Base
  # Accessible Attributes
  attr_accessible :debateName, :password, :password_confirmation, :firstName, :lastName, :email,
                  :age, :gender, :admin, :avgDuration, :numDebates, :upvotes, :debateRank, :friends
  has_secure_password

  has_attached_file :photo

  # Associations
  has_and_belongs_to_many :debates
  has_many :friends

  # Validations
  before_validation { self.debateName.downcase! }
  validates :debateName, :presence => true, :uniqueness => true, :on => :create
  validates :email, :presence => true, :uniqueness => true, :on => :create
  validates :password, :presence => true, :confirmation => true, :length => { :minimum => 6 }, :on => :create
  validates :password_confirmation, :presence => true, :on => :create
  
  # Model Methods

  def updateDebateRank
    computeDebateRank = 2*self.upvotes + self.numDebates
    if computeDebateRank < 5
      self.debateRank = "rookie"
    elsif computeDebateRank < 10
      self.debateRank = "High School Debate Team"
    elsif computeDebateRank < 25
      self.debateRank = "Sophist"
    elsif computedebateRank < 50
      self.debateRank = "Pundit"
    elsif computeDebateRank < 100 
      self.debateRank = "Lawyer"
    else
      self.debateRank = "Master Debater"
    self.save
    end
  end

end
