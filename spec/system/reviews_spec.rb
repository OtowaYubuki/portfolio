require 'rails_helper'

RSpec.describe '予約ページが正しく挙動するか', type: :system do
  let!(:user) { create :user }
  let!(:influencer) { create :influencer }
  let!(:review) { create :review }

  before do
    sign_in user
  end

  it 'インフルエンサー詳細ページのレビューを書くをクリックしたとき、レビュー作成ページへアクセスすること' do
    visit influencer_path(influencer.id)
    click_link 'レビューを書く'
    expect(current_path).to eq new_influencer_review_path(influencer.id)
  end

  # it 'レビューを作成したら、レビュー一覧画面に正しく表示されること' do
  #   visit confirm_influencer_reviews_path(influencer.id)
  #   click_button '送信する'
  #   expect(current_path).to eq influencer_path(influencer.id)
  #   visit influencer_reviews_path(influencer.id)
  #   expect(page).to have_content(user.name)
  # end
end
