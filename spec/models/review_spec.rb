require 'rails_helper'

RSpec.describe Review, type: :model do
  let!(:user) { create :user }
  let!(:review) { create :review }
  let!(:influencer) { create :influencer }

  context 'バリデーションのテスト' do
    it 'スコアがあれば有効であること' do
      expect(review).to be_valid
    end

    it 'スコアがなければ無効であること' do
      review.score = ''
      expect(review).not_to be_valid
    end
  end
end
