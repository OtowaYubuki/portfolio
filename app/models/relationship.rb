class Relationship < ApplicationRecord
  belongs_to :user
  belongs_to :influencer

  validates_uniqueness_of :influencer_id, scope: :user_id
end
