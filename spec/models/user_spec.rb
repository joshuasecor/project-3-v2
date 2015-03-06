require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should have_secure_password }
  it { should validate_uniqueness_of(:email) }
  it { should have_many(:comments) }
end
