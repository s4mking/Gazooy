class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_many :gazooys
  has_one :profile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def profile
    super || build_profile
  end
  after_create :create_profile
        #  attr_writer :login
        #  validate :validate_username

        #  def validate_username
        #    if User.where(email: username).exists?
        #      errors.add(:username, :invalid)
        #    end
        #  end
        #  def login
        #    @login || self.username || self.email
        #  end
        #  def self.find_first_by_auth_conditions(warden_conditions)
        #   conditions = warden_conditions.dup
        #   if login = conditions.delete(:login)
        #     where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
        #   else
        #     if conditions[:username].nil?
        #       where(conditions).first
        #     else
        #       where(username: conditions[:username]).first
        #     end
        #   end
        # end
end
