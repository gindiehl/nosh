class Service < ActiveRecord::Base
  has_many :reviews
  validates :name, :description, :price, presence: true
  validates :name, uniqueness: {case_sensitive: false}
end  
