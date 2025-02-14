require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user = User.new(nickname: "Test User", email: "test@example.com", password: "password", password_confirmation: "password")
    expect(user).to be_valid
  end

  it "is not valid without a nickname" do
    user = User.new(nickname: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without an email" do
    user = User.new(email: nil)
    expect(user).to_not be_valid
  end

  # 追加のテストをここに書く
end
