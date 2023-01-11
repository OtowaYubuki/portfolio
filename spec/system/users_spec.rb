require 'rails_helper'

RSpec.describe 'ユーザーページが正しく挙動するか', type: :system do
  let!(:user) { create :user }

  before do
    sign_in user
    visit user_path(user.id)
  end

  it 'プロフィール画面にユーザーの名前とメールアドレスが正しく表示されていること' do
    expect(page).to have_content(user.name)
    expect(page).to have_content(user.email)
  end

  it 'プロフィールを編集をクリックしたときプロフィールを編集ページにアクセスすること' do
    click_link 'プロフィールを編集'
    expect(current_path).to eq edit_user_registration_path
  end
end
