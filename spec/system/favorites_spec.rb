require 'rails_helper'

RSpec.describe Favorite, type: :system do
  let!(:user) { create :user }
  let!(:counseling) { create :counseling }
  let(:favorite) { create :favorite }

  before do
    sign_in user
  end

  it 'ユーザーがカウンセリングをお気に入りしたら、お気に入り一覧ページにお気に入りしたカウンセリングが正しく表示されること' do
    visit counseling_path(counseling.id)
    click_link '+お気に入り登録'
    visit user_favorites_path(user.id)
    expect(page).to have_content(counseling.name)
  end

  it 'ユーザーがカウンセリングをお気に入りしたら、お気に入り一覧ページにお気に入りしたカウンセリングの数が正しく表示されること' do
    visit counseling_path(counseling.id)
    click_link '+お気に入り登録'
    visit user_favorites_path(user.id)
    expect(page).to have_content('1件')
  end

  it 'ユーザーがカウンセリングのお気に入りを解除したら、お気に入り一覧ページにカウンセリングが表示されないこと' do
    visit counseling_path(counseling.id)
    click_link '+お気に入り登録'
    click_link '-お気に入り解除'
    visit user_favorites_path(user.id)
    expect(page).not_to have_content(counseling.name)
  end

  it 'ユーザーがカウンセリングを1件もお気に入りしていないとき、お気に入り一覧ページに「お気に入りしたカウンセリングはまだありません」と表示されされること' do
    visit user_favorites_path(user.id)
    expect(page).to have_content('お気に入りしたカウンセリングはまだありません')
  end
end

