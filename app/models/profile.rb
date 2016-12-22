class Profile < ActiveRecord::Base
  rolify
    belongs_to :user
end