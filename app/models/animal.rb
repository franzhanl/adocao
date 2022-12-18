class Animal < ApplicationRecord
  belongs_to :user
  paginates_per 6
  has_one_attached :avatar

end
