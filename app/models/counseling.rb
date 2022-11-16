class Counseling < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
  has_many :reservations, dependent: :destroy
end
