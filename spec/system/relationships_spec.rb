require 'rails_helper'

RSpec.describe Relationship, type: :system do
  let!(:user) { create :user }
  let!(:influencer) { create :influencer }
  let!(:relationship) { create :relationship }

  context 'フォロー追加' do
    before do
      sign_in user
      visit influencer_path(influencer.id)
      click_link '+フォローする'
    end

    it 'ユーザーがインフルエンサーをフォローしたら、フォロー一覧ページにフォロー中のインフルエンサーが正しく表示されること' do
      visit user_relationships_path(user.id)
      expect(page).to have_content(influencer.name)
    end

    it 'ユーザーがインフルエンサーをフォローしたら、フォロー一覧ページにフォロー中のインフルエンサーの数が正しく表示されること' do
      visit user_relationships_path(user.id)
      expect(page).to have_content('1件')
    end
  end

  context 'フォロー解除' do
    before do
      sign_in user
      visit influencer_path(influencer.id)
      click_link '+フォローする'
      click_link '-フォローを外す'
      visit user_relationships_path(user.id)
    end

    it 'ユーザーがインフルエンサーのフォローを外したら、フォロー一覧ページにフォロー中のインフルエンサーが表示されないこと' do
      expect(page).not_to have_content(influencer.name)
    end

    it 'ユーザーがインフルエンサーを1人もフォローしていないとき、フォロー一覧ページに「フォロー中のインフルエンサーはまだいません」と表示されされること' do
      expect(page).to have_content('フォロー中のインフルエンサーはまだいません')
    end
  end
end
