class User < ActiveRecord::Base
  # Accessible Attributes
  attr_accessible :debateName, :password, :password_confirmation, :firstName, :lastName, :email,
                  :age, :gender, :admin, :avgDuration, :numDebates, :upvotes, :debateRank
  has_secure_password

  has_attached_file :photo

  # Associations
  has_and_belongs_to_many :debates

  # Validations
  before_validation { self.debateName.downcase! }
  validates :debateName, :presence => true, :uniqueness => true, :on => :create
  validates :email, :presence => true, :uniqueness => true, :on => :create
  validates :password, :presence => true, :confirmation => true, :length => { :minimum => 6 }, :on => :create
  validates :password_confirmation, :presence => true, :on => :create
  
  # Model Methods

  def updateDebateRank
    user = User.find(session[:user_id])
    computeDebateRank = 2*user.upvotes + user.numDebates
    if computeDebateRank < 5
      user.debateRank = "rookie"
    elsif computeDebateRank < 10
      user.debateRank = "High School Debate Team"
    elsif computeDebateRank < 25
      user.debateRank = "Sophist"
    elsif computedebateRank < 50
      user.debateRank = "Pundit"
    elsif computeDebateRank < 100 
      user.debateRank = "Lawyer"
    else
      user.debateRank = "Master Debater"
    user.save
    end
  end

end
