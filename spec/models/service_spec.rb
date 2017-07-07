require 'rails-helper'

describe Service do
  it { should have_many :reviews }
  it { should validate_presence_of :name, :description, :price }
  it { should validate_uniqueness_of(:name).case_insensitive }
end
