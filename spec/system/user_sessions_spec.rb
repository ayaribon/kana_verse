=begin
require 'rails_helper'

RSpec.describe "UserSessions", type: :system do
  let(:user) { create(:user) }

  describe 'before login' do
    context 'with valid attributes' do
      it "redirects to the root path when login is successful" do
        visit login_path # able to access without login
        fill_in 'Email', with: user.email
        fill_in 'Password', with: 'password'
        click_button 'Login'
        expect(page).to have_content 'ログインに成功しました'
        expect(current_path).to eq root_path
      end
    end

    context 'unvalid attributes' do
      it 'renders to the same path when login is not successful' do
        visit login_path
        fill_in 'Email', with: ''
        fill_in 'Password', with: 'password'
        click_button 'Login'
        expect(page).to have_content 'ログインに失敗しました'
        expect(current_path).to eq login_path
      end
    end
  end

  describe 'after login' do
    context 'click the logout button' do
      it 'redirects to the root path when logout is successful' do
        # User login simulation
        visit login_path
        fill_in 'Email', with: user.email
        fill_in 'Password', with: 'password'
        click_button 'Login'

        # Logout process
        click_link 'Logout'  # or click_button 'Logout' depending on your implementation
        expect(page).to have_content 'ログアウトしました'
        expect(current_path).to eq root_path
      end
    end
  end
end
=end
