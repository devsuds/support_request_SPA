class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum user_type: [:customer, :agent, :admin]
  after_initialize :set_default_user_type, :if => :new_record?

  def set_default_user_type
  	self.user_type ||= :customer
  end
end
