require 'rails_helper'

RSpec.describe 'トップページ', type: :system do
  let!(:user) { create :user }

  before do
    visit root_path
  end

  it 'サイトロゴをクリックしたときTOPページにアクセスすること' do
    click_link 'meselling'
    expect(current_path).to eq root_path
  end

  context 'ユーザーログイン前' do
    it '新規登録をクリックしたとき新規登録ページにアクセスすること' do
      click_link '新規登録'
      expect(current_path).to eq new_user_registration_path
    end

    it 'ログインをクリックしたときログインページにアクセスすること' do
      click_link 'ログイン'
      expect(current_path).to eq new_user_session_path
    end

    it '今すぐはじめるをクリックしたとき新規登録ページにアクセスすること' do
      click_link '今すぐはじめる'
      expect(current_path).to eq new_user_registration_path
    end

    it 'アカウントをお持ちの方をクリックしたときログインページにアクセスすること' do
      click_link 'アカウントをお持ちの方'
      expect(current_path).to eq new_user_session_path
    end

    it 'もっと見るをクリックしたときログインページにアクセスすること' do
      click_link 'もっと見る'
      expect(current_path).to eq new_user_session_path
    end

    it 'さっそくはじめるをクリックしたとき新規登録ページにアクセスすること' do
      click_link 'さっそくはじめる'
      expect(current_path).to eq new_user_registration_path
    end
  end

  context 'ユーザーログイン後' do
    it 'カウンセリング一覧へをクリックしたときカウンセリング一覧ページにアクセスすること' do
      sign_in user
      visit root_path
      click_link ('カウンセリング一覧へ')
      expect(current_path).to eq counselings_path
    end

    it 'インフルエンサー一覧へをクリックしたときインフルエンサー一覧ページにアクセスすること' do
      sign_in user
      visit root_path
      click_link 'インフルエンサーを探す'
      expect(current_path).to eq influencers_path
    end

    it 'ログアウトをクリックしたときログイン前のTOPページへアクセスすること' do
      sign_in user
      visit root_path
      click_link 'ログアウト'
      expect(current_path).to eq root_path
      expect(page).to have_content('新規登録')
    end

    it 'ハンバーガーメニューのHOMEをクリックしたときログイン後のTOPページへアクセスすること' do
      sign_in user
      visit root_path
      click_link 'HOME'
      expect(current_path).to eq root_path
      expect(page).to have_content('カウンセリング一覧へ')
    end

    it 'ハンバーガーメニューのプロフィールを編集するをクリックしたときユーザーのプロフィール編集ページへアクセスすること' do
      sign_in user
      visit root_path
      click_link 'プロフィールを編集する'
      expect(current_path).to eq user_path(user.id)
      expect(page).to have_content(user.name)
    end

    it 'ハンバーガーメニューのカウンセリングを探すをクリックしたときカウンセリング一覧ページへアクセスすること' do
      sign_in user
      visit root_path
      click_link 'カウンセリングを探す'
      expect(current_path).to eq counselings_path
    end

    it 'ハンバーガーメニューのインフルエンサーを探すをクリックしたときインフルエンサー一覧ページへアクセスすること' do
      sign_in user
      visit root_path
      click_link 'インフルエンサーを探す'
      expect(current_path).to eq influencers_path
    end

    it 'ハンバーガーメニューの予約一覧をクリックしたときユーザーの予約一覧ページへアクセスすること' do
      sign_in user
      visit root_path
      click_link '予約一覧'
      expect(current_path).to eq user_reservations_path(user.id)
    end

    it 'ハンバーガーメニューのお気に入り一覧をクリックしたときユーザーのお気に入り一覧ページへアクセスすること' do
      sign_in user
      visit root_path
      click_link 'お気に入り一覧'
      expect(current_path).to eq user_favorites_path(user.id)
    end

    it 'ハンバーガーメニューのフォロー中のインフルエンサーをクリックしたときユーザーがフォロー中のインフルエンサー一覧ページへアクセスすること' do
      sign_in user
      visit root_path
      click_link 'フォロー中のインフルエンサー'
      expect(current_path).to eq user_relationships_path(user.id)
    end
  end
end
