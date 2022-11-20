class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :counseling
end
