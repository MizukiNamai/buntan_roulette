require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "内容に問題がない場合" do
        expect(@user).to be_valid
      end
      it 'emailは全て小文字で保存される' do
        @user.email = 'SAMPLE@SAMPLE.JP'
        @user.save!
        expect(@user.reload.email).to eq 'sample@sample.jp'
      end
    end
    context '新規登録がうまくいかないとき' do
      it '内容に問題がある場合' do
        @user.email=""
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it "重複したメールアドレスなら無効な状態であること" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")
      end
      it "パスワードが空の状態では登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it "パスワードが存在してもpassword_confirmationが空では登録できない" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it "パスワードが半角英数字混合でなければ登録できない" do
        @user.password = "aaaaaa"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it "パスワードが全角であれば登録できない" do
        @user.password = "ああああああ"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
    end
  end

  describe 'パスワードの検証' do
    it 'パスワードと確認用パスワードが間違っている場合、無効であること' do
      @user.password = 'password'
      @user.password_confirmation = 'pass'
      @user.valid?
      expect(@user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    it 'パスワードが暗号化されていること' do
      expect(@user.encrypted_password).to_not eq 'password'
    end
  end

  describe 'フォーマットの検証' do
    it 'メールアドレスが正常なフォーマットの場合、有効であること' do
      valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                           first.last@foo.jp alice+bob@baz.cn]
      valid_addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end
end
