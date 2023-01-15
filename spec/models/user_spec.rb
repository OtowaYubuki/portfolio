require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { create :user }

  context 'バリデーションのテスト' do
    it '名前、メールアドレス、パスワードがあれば有効であること' do
      expect(user).to be_valid
    end

    it '名前がなければ無効であること' do
      user.name = ''
      user.valid?
      expect(user.errors[:name]).to include('を入力してください')
    end

    it 'メールアドレスがなければ無効であること' do
      user.name = 'テスト'
      user.email = ''
      user.valid?
      expect(user.errors[:email]).to include('を入力してください')
    end

    it 'パスワードがなければ無効であること' do
      user.name = 'テスト'
      user.email = 'test@gmail.com'
      user.password = ''
      user.valid?
      expect(user.errors[:password]).to include('を入力してください')
    end
  end
end
