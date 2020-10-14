class User < ApplicationRecord
   validates :username, presence: true, uniqueness: true,length: { in: 1..15 }   
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
