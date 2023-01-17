require 'rails_helper'

RSpec.describe Counseling, type: :system do
  let!(:user) { create :user }
  let!(:counseling) { create :counseling }
  let!(:influencer) { create :influencer }

  context 'カウンセリング一覧ページ' do
    before do
      sign_in user
      visit counselings_path
    end

    it 'カウンセリング情報が正しく表示されていること' do
      expect(page).to have_content(counseling.name)
    end

    it '詳細をクリックしたときカウンセリング詳細ページにアクセスすること' do
      click_link '詳細'
      expect(current_path).to eq counseling_path(counseling.id)
    end
  end

  context 'カウンセリング詳細ページ' do
    before do
      sign_in user
      visit counseling_path(counseling.id)
    end

    it 'カウンセリング詳細ページにカウンセリング情報が正しく表示されること' do
      expect(page).to have_content(counseling.name)
      expect(page).to have_content(counseling.content)
    end

    it 'カウンセリング一覧に戻るをクリックしたときカウンセリング一覧ページにアクセスすること' do
      click_link 'カウンセリング一覧に戻る'
      expect(current_path).to eq counselings_path
    end

    it 'カウンセリングを主催しているインフルエンサー情報が正しく表示されること' do
      expect(page).to have_content('主催のインフルエンサー')
      expect(page).to have_content(counseling.influencer.name)
    end

    it 'カウンセリングを主催しているインフルエンサー情報の詳細をクリックしたとき、インフルエンサー詳細ページへアクセスすること' do
      within('#counseling_show_influencer') do
        click_link '詳細'
        expect(current_path).to eq influencer_path(counseling.influencer.id)
      end
    end
  end

  context '検索フォーム' do
    before do
      sign_in user
      visit counselings_path
    end

    it 'カウンセリングのフリーワード検索が正しくできること' do
      fill_in 'キーワードから探す', with: counseling.name
      click_button '検索'
      expect(page).to have_content(counseling.name)
    end
  end
end
