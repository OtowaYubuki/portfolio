require 'rails_helper'

RSpec.describe Influencer, type: :system do
  let!(:user) { create :user }
  let!(:influencer) { create :influencer }

  before do
    sign_in user
    visit influencers_path
  end

  context 'インフルエンサー一覧ページ' do
    before do
      sign_in user
      visit influencers_path
    end

    it '詳細へをクリックしたときインフルエンサー詳細ページにアクセスすること' do
      click_link '詳細へ'
      expect(current_path).to eq influencer_path(influencer.id)
    end
  end

  context 'インフルエンサー詳細ページ' do
    before do
      sign_in user
      visit influencer_path(influencer.id)
    end

    it 'インフルエンサー詳細ページにインフルエンサー情報が表示されること' do
      expect(page).to have_content('インフルエンサー詳細')
    end

    it 'インフルエンサー一覧に戻るをクリックしたときインフルエンサー一覧ページが表示されること' do
      click_link 'インフルエンサー一覧に戻る'
      expect(current_path).to eq influencers_path
    end
  end
end
