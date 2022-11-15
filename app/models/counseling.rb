class Counseling < ApplicationRecord
  has_many :favorites, dependent: :destroy
end
