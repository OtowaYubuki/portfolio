require 'rails_helper'

RSpec.describe Favorite, type: :system do
  let!(:user) { create :user }
  let!(:counseling) { create :counseling }
  let(:favorite) { create :favorite }

  context 'お気に入り追加' do
    before do
      sign_in user
      visit counseling_path(counseling.id)
      click_link '+お気に入り登録'
      visit user_favorites_path(user.id)
    end

    it 'ユーザーがカウンセリングをお気に入りしたら、お気に入り一覧ページにお気に入りしたカウンセリングが正しく表示されること' do
      expect(page).to have_content(counseling.name)
    end

    it 'ユーザーがカウンセリングをお気に入りしたら、お気に入り一覧ページにお気に入りしたカウンセリングの数が正しく表示されること' do
      expect(page).to have_content('1件')
    end
  end

  context 'お気に入り解除' do
    before do
      sign_in user
      visit counseling_path(counseling.id)
      click_link '+お気に入り登録'
      click_link '-お気に入り解除'
      visit user_favorites_path(user.id)
    end

    it 'ユーザーがカウンセリングのお気に入りを解除したら、お気に入り一覧ページにカウンセリングが表示されないこと' do
      expect(page).not_to have_content(counseling.name)
    end

    it 'ユーザーがカウンセリングを1件もお気に入りしていないとき、お気に入り一覧ページに「お気に入りしたカウンセリングはまだありません」と表示されされること' do
      expect(page).to have_content('お気に入りしたカウンセリングはまだありません')
    end
  end
end

