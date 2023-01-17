require 'rails_helper'

RSpec.describe Reservation, type: :model do
  let!(:user) { create :user }
  let!(:counseling) { create :counseling }
  let!(:reservation) { create :reservation }

  context 'アソシエーションのテスト' do
    it 'Userモデルとの関係がN:1となっていること' do
      expect(Reservation.reflect_on_association(:user).macro).to eq :belongs_to
    end

    it 'Counselingモデルとの関係がN:1となっていること' do
      expect(Reservation.reflect_on_association(:counseling).macro).to eq :belongs_to
    end
  end

  context 'アソシエーションのテスト' do
    it '同じUserが同じCounselingを予約できないこと' do
      other_reservation = FactoryBot.create(:reservation)
      reservation.user = other_reservation.user
      reservation.counseling = other_reservation.counseling
      expect(reservation).not_to be_valid
    end
  end
end
