require 'rails_helper'

RSpec.describe User, type: :system do
  let!(:user) { create :user }

  context 'ユーザー新規登録' do
    before do
      visit new_user_registration_path
    end

    it '新規登録に成功すること' do
      fill_in 'ユーザー名', with: 'テスト'
      fill_in 'メールアドレス', with: 'test@example.com'
      fill_in 'パスワード(6文字以上)', with: 'testtest'
      fill_in 'パスワード(確認用)', with: 'testtest'
      click_button '登録する'
      expect(page).to have_content('プロフィール編集')
    end

    it '新規登録に失敗すること' do
      fill_in 'ユーザー名', with: ''
      fill_in 'メールアドレス', with: ''
      fill_in 'パスワード(6文字以上)', with: ''
      fill_in 'パスワード(確認用)', with: ''
      click_button '登録する'
      expect(page).not_to have_content('プロフィール編集')
    end
  end

  context 'ユーザーログイン' do
    before do
      visit new_user_session_path
    end

    it 'ログインに成功すること' do
      fill_in 'メールアドレス', with: user.email
      fill_in 'パスワード(6文字以上)', with: user.password
      click_button 'ログイン'
      expect(page).to have_content('プロフィール編集')
    end

    it 'ログインに失敗すること' do
      fill_in 'メールアドレス', with: ''
      fill_in 'パスワード(6文字以上)', with: ''
      click_button 'ログイン'
      expect(page).not_to have_content('プロフィール編集')
    end
  end

  context 'ゲストログイン' do
    before do
      visit new_user_session_path
    end

    it 'ゲストログイン（閲覧用）をクリックしたとき、ゲストユーザーとしてログインに成功すること' do
      click_link 'ゲストログイン（閲覧用）'
      expect(page).to have_content('ゲスト')
    end
  end

  context 'プロフィールページ' do
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

    it 'プロフィール編集に成功すること' do
      click_link 'プロフィールを編集'
      fill_in 'ユーザー名', with: 'テストテスト'
      fill_in 'メールアドレス', with: 'testtest@example.com'
      click_button '更新する'
      expect(page).to have_content('テストテスト')
    end

    it 'プロフィール編集に失敗すること' do
      click_link 'プロフィールを編集'
      fill_in 'ユーザー名', with: ''
      fill_in 'メールアドレス', with: user.email
      click_button '更新する'
      expect(page).to have_content('エラー')
    end
  end
end
