require 'rails_helper'

RSpec.describe Relationship, type: :model do
  let!(:user) { create :user }
  let!(:influencer) { create :influencer }
  let!(:relationship) { create :relationship }

  context 'アソシエーションのテスト' do
    it 'Userモデルとの関係がN:1となっていること' do
      expect(Relationship.reflect_on_association(:user).macro).to eq :belongs_to
    end

    it 'Influencerモデルとの関係がN:1となっていること' do
      expect(Relationship.reflect_on_association(:influencer).macro).to eq :belongs_to
    end
  end

  context 'アソシエーションのテスト' do
    it '同じUserが同じInfluencerをフォローできないこと' do
      other_relationship = FactoryBot.create(:relationship)
      relationship.user = other_relationship.user
      relationship.influencer = other_relationship.influencer
      expect(relationship).not_to be_valid
    end
  end
end
