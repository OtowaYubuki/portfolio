require 'rails_helper'

RSpec.describe 'カウンセリングページが正しく挙動するか', type: :system do
  let!(:user) { create :user }
  let!(:counseling) { create :counseling }
  let(:reservation) { create :reservation }

  before do
    sign_in user
    visit counselings_path
  end

  it '詳細をクリックしたときカウンセリング詳細ページにアクセスすること' do
    click_link '詳細'
    expect(current_path).to eq counseling_path(counseling.id)
  end

  it 'カウンセリング詳細ページにカウンセリング情報が表示されること' do
    visit counseling_path(counseling.id)
    expect(page).to have_content('開催日')
  end

  it 'カウンセリング一覧に戻るをクリックしたときカウンセリング一覧ページにアクセスすること' do
    visit counseling_path(counseling.id)
    click_link 'カウンセリング一覧に戻る'
    expect(current_path).to eq counselings_path
  end
end
