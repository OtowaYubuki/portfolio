class Review < ApplicationRecord
  belongs_to :user
  belongs_to :influencer

  validates :score, presence: true

  def getPercent(number)
    if number.present?
      calpercent = number / 5.to_f * 100
      percent = calpercent.round
      percent.to_s
    else
      0
    end
  end
end
