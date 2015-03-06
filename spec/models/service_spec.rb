require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe Service, type: :model do
  it { should have_many(:comments) }
  it { should have_many(:appointments) }
  it { should belong_to(:level) }
  it { should belong_to(:category) }
end
