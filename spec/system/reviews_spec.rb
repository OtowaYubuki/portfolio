require 'rails_helper'

RSpec.describe Review, type: :system do
  let!(:user) { create :user }
  let!(:counseling) { create :counseling }
  let!(:influencer) { create :influencer }
  let!(:review) { create :review }

  context 'インフルエンサー詳細ページ' do
    before do
      sign_in user
      visit influencer_path(influencer.id)
    end

    it 'インフルエンサー詳細ページのレビューを書くをクリックしたとき、レビュー作成ページへアクセスすること' do
      click_link 'レビューを書く'
      expect(current_path).to eq new_influencer_review_path(influencer.id)
    end
  end

  context 'レビュー新規作成' do
    before do
      sign_in user
      visit new_influencer_review_path(influencer.id)
    end

    it 'レビューの作成に成功すること' do
      choose 'star5'
      fill_in 'コメントを入力してください', with: 'ありがとうございました'
      click_button 'レビューを送信する'
      expect(page).to have_content('ありがとうございました')
    end

    it 'レビューの作成に失敗すること' do
      fill_in 'コメントを入力してください', with: 'ありがとうございました'
      click_button 'レビューを送信する'
      expect(current_path).to eq new_influencer_review_path(influencer.id)
      expect(page).to have_content('星評価は必須です')
    end
  end

  context 'レビュー送信' do
    before do
      sign_in user
      visit new_influencer_review_path(influencer.id)
      choose 'star5'
      fill_in 'コメントを入力してください', with: 'ありがとうございました'
      click_button 'レビューを送信する'
    end

    it 'レビューを送信するをクリックしたら、確認画面にアクセスすること' do
      expect(current_path).to eq confirm_influencer_reviews_path(influencer.id)
    end

    it '確認画面にレビューの内容が正しく表示されていること' do
      expect(current_path).to eq confirm_influencer_reviews_path(influencer.id)
      expect(page).to have_content('ありがとうございました')
    end

    it '確認画面の送信するをクリックしたら、インフルエンサー詳細ページにアクセスすること' do
      expect(current_path).to eq confirm_influencer_reviews_path(influencer.id)
      click_button '送信する'
      expect(current_path).to eq influencer_path(influencer.id)
    end

    it 'レビューを送信したら、インフルエンサー詳細ページにフラッシュメッセージが表示されること' do
      expect(current_path).to eq confirm_influencer_reviews_path(influencer.id)
      click_button '送信する'
      expect(current_path).to eq influencer_path(influencer.id)
      expect(page).to have_content('レビューを投稿しました')
    end

    it 'レビューを送信したら、インフルエンサー詳細ページにレビュー件数が正しく表示されること' do
      expect(current_path).to eq confirm_influencer_reviews_path(influencer.id)
      click_button '送信する'
      expect(current_path).to eq influencer_path(influencer.id)
      expect(page).to have_content('（1）')
    end
  end

  context 'レビュー一覧' do
    before do
      sign_in user
      visit new_influencer_review_path(influencer.id)
      choose 'star5'
      fill_in 'コメントを入力してください', with: 'ありがとうございました'
      click_button 'レビューを送信する'
    end

    it 'レビュー一覧ページに、レビュー内容とユーザー名が正しく表示されること' do
      expect(current_path).to eq confirm_influencer_reviews_path(influencer.id)
      click_button '送信する'
      expect(current_path).to eq influencer_path(influencer.id)
      visit influencer_reviews_path(influencer.id)
      expect(page).to have_content(user.name)
      expect(page).to have_content('ありがとうございました')
    end

    it 'インフルエンサー詳細へ戻るをクリックしたとき、インフルエンサー詳細ページにアクセスすること' do
      expect(current_path).to eq confirm_influencer_reviews_path(influencer.id)
      click_button '送信する'
      expect(current_path).to eq influencer_path(influencer.id)
      visit influencer_reviews_path(influencer.id)
      click_link 'インフルエンサー詳細へ戻る'
      expect(current_path).to eq influencer_path(influencer.id)
    end
  end
end
