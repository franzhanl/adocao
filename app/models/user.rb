class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :user_profile
  #accept_nested_attributes_for :user_profile, reject_if: :all_blank
  has_many :animal

  #validations of user create
  validates :first_name, presence: true, length: { minimum: 3 } 
  validates :last_name, presence: true, length: { minimum: 3 } 
  validates :address, presence: true 
  validates :gender, presence: true 
  validates :birthday, presence: true 
  validates :phone, presence: true, length: { minimum: 9 } 

end
