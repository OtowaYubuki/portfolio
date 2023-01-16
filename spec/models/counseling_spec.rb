require 'rails_helper'

RSpec.describe Counseling, type: :model do
  let!(:counseling) { create :counseling }
  let!(:influencer) { create :influencer }

  context 'アソシエーションのテスト' do
    it 'Influencerモデルとの関係がN:1となっていること' do
      expect(Counseling.reflect_on_association(:influencer).macro).to eq :belongs_to
    end
  end
end
