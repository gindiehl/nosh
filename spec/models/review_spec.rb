require 'rails_helper'

describe Review do
  it { should belong_to :service, :user }
  it { should validate_presence_of :author, :content, :user_id, :service_id }
end
