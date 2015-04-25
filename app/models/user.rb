class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rent, dependent: :destroy
  before_save :set_authority

  def set_authority
    if self.authority == nil
      self.authority = 0
    end
    if self.email == 'benben8435@gmail.com'
      self.authority = 2
    end
  end

end
