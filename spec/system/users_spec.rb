=begin
require 'rails_helper'

RSpec.describe "Users", type: :system do
  let(:user) { create(:user) }

  describe 'before login' do
    describe 'user enrollment' do
      context 'when accessing the registration page' do
        it 'allows access without logging in' do
          visit new_user_path # able to access without login
          expect(current_path).to eq new_user_path
        end
      end

      context 'with valid attributes' do
        it 'redirects to the login path when enrollment is successful' do
          visit new_user_path
          fill_in 'nickname', with: 'nickname'
          fill_in 'email', with: 'email@example.com'
          fill_in 'password', with: 'password'
          fill_in 'password_confirmation', with: 'password'
          click_button '登録'
          expect(page).to have_content 'ユーザー登録が完了しました'
          expect(current_path).to eq login_path
        end
      end

      context 'without email' do
        it 'renders the same path when enrollment is not successful' do
          visit new_user_path
          fill_in 'nickname', with: 'nickname'
          fill_in 'email', with: ''
          fill_in 'password', with: 'password'
          fill_in 'password_confirmation', with: 'password'
          click_button '登録'
          expect(page).to have_content 'ユーザー登録に失敗しました'
          expect(current_path).to eq new_user_path
        end
      end

      context 'with registered email' do
        it 'renders the same path when enrollment is not successful' do
          existed_user = create(:user)
          visit new_user_path
          fill_in 'nickname', with: 'nickname'
          fill_in 'email', with: existed_user.email
          fill_in 'password', with: 'password'
          fill_in 'password_confirmation', with: 'password'
          click_button '登録'
          expect(page).to have_content 'ユーザー登録に失敗しました'
          expect(current_path).to eq new_user_path
        end
      end
    end
  end
end
=end
