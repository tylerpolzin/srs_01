class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :assign_default_role

  has_one :profile
  belongs_to :task, foreign_key: :initiated_by
  has_many :stores
  
  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end
end
