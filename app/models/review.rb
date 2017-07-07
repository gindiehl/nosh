class Review < ActiveRecord::Base
  belongs_to :service
  belongs_to :user
  validates :author, :content, :service_id, :user_id, presence: true
end
