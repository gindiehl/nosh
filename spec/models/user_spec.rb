require 'rails-helper'

describe User do
  it { should validate_presence_of :user_name, :email, :password }
  it { should validate_uniqueness_of(:user_name, :email).case_insensitive }
end
