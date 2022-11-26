class Influencer < ApplicationRecord
  has_many :counselings
  has_many :relationships, dependent: :destroy
end
