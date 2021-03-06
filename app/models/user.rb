class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :assign_default_role
  
  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end
  
  # Tyler Polzin
  user = User.find(1)
  user.add_role :tyler
  user.add_role :reps
  
  # Frank Bernard
  user = User.find(2)
  user.add_role :frank
  
  # Jill Bernard
  user = User.find(3)
  user.add_role :jill
  
  # Scott Feroni
  user = User.find(4)
  user.add_role :scott
  
  # Arielle Ost
  user = User.find(5)
  user.add_role :arielle
  
  # Mackenzie Bublitz
  user = User.find(6)
  user.add_role :mackenzie
  
  
  # Padula
  user = User.find(7)
  user.add_role :padula
  
  
    # Sharp
  user = User.find(8)
  user.add_role :sharp
  
  
    # Colonial
  user = User.find(9)
  user.add_role :colonial
  
  
    # Beth Sheely
  user = User.find(10)
  user.add_role :sheely
  user.add_role :reps
  
  
    # Brian Myers
  user = User.find(11)
  user.add_role :myers
  user.add_role :reps
  
  
    # Jeff Voegele
  user = User.find(12)
  user.add_role :voegele
  user.add_role :reps
  
  
    # Lindy Barsness
  user = User.find(13)
  user.add_role :barsness
  user.add_role :reps
  
  
    # Mark Emerson
  user = User.find(14)
  user.add_role :emerson
  user.add_role :reps
  
  
    # Steve Mampe
  user = User.find(15)
  user.add_role :mampe
  user.add_role :reps
  
  
    # Tom Brennan
  user = User.find(16)
  user.add_role :brennan
  user.add_role :reps
  
  
    # Tony Scotino
  user = User.find(17)
  user.add_role :scotino
  user.add_role :reps
  
  
    # Tony Duquette
  user = User.find(18)
  user.add_role :duquette
  user.add_role :reps
  
end
