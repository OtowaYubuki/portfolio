require 'rails_helper'

RSpec.describe Reservation, type: :system do
  let!(:user) { create :user }
  let!(:counseling) { create :counseling }
  let(:reservation) { create :reservation }

  context '予約新規作成' do
    before do
      sign_in user
      visit new_counseling_reservation_path(counseling.id)
    end

    it '新規予約ページにカウンセリング情報が正しく表示されていること' do
      expect(page).to have_content(counseling.name)
    end

    it '新規予約ページの確認画面へをクリックしたとき、予約確認画面にアクセスすること' do
      click_button '確認画面へ'
      expect(current_path).to eq confirm_counseling_reservations_path(counseling.id)
    end

    it '確認画面のカウンセリング詳細に戻るをクリックしたとき、カウンセリング詳細ページにアクセスすること' do
      click_button '確認画面へ'
      expect(current_path).to eq confirm_counseling_reservations_path(counseling.id)
      click_link 'カウンセリング詳細に戻る'
      expect(current_path).to eq counseling_path(counseling.id)
    end

    it '予約を確定するをクリックしたとき、予約一覧ページにアクセスすること' do
      click_button '確認画面へ'
      expect(current_path).to eq confirm_counseling_reservations_path(counseling.id)
      click_button '予約を確定する'
      expect(current_path).to eq user_reservations_path(user.id)
    end

    it '予約を確定するをクリックしたとき、予約一覧ページに予約完了のフラッシュメッセージが表示されること' do
      click_button '確認画面へ'
      expect(current_path).to eq confirm_counseling_reservations_path(counseling.id)
      click_button '予約を確定する'
      expect(current_path).to eq user_reservations_path(user.id)
      expect(page).to have_content('予約が完了しました')
    end
  end

  context '予約一覧ページ' do
    before do
      sign_in user
      visit new_counseling_reservation_path(counseling.id)
      click_button '確認画面へ'
      expect(current_path).to eq confirm_counseling_reservations_path(counseling.id)
      click_button '予約を確定する'
    end

    it '予約一覧ページに予約したカウンセリング情報が正しく表示されること' do
      expect(current_path).to eq user_reservations_path(user.id)
      expect(page).to have_content(counseling.name)
    end

    it '予約一覧ページに予約したカウンセリング件数が正しく表示されること' do
      expect(current_path).to eq user_reservations_path(user.id)
      expect(page).to have_content('1件')
    end
  end
end
