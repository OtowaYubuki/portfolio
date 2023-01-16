require 'rails_helper'

RSpec.describe Favorite, type: :model do
  let!(:user) { create :user }
  let!(:counseling) { create :counseling }
  let!(:favorite) { create :favorite }

  context 'アソシエーションのテスト' do
    it 'Userモデルとの関係がN:1となっていること' do
      expect(Favorite.reflect_on_association(:user).macro).to eq :belongs_to
    end

    it 'Counselingモデルとの関係がN:1となっていること' do
      expect(Favorite.reflect_on_association(:counseling).macro).to eq :belongs_to
    end
  end

  context 'アソシエーションのテスト' do
    it '同じUserが同じCounselingをFavoriteできないこと' do
      other_favorite = FactoryBot.create(:favorite)
      favorite.user = other_favorite.user
      favorite.counseling = other_favorite.counseling
      expect(favorite).not_to be_valid
    end
  end
end


