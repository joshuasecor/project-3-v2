require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe Message, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_length_of(:email).is_at_least(6) }
  it { should validate_presence_of(:content) }
  it { should validate_length_of(:content).is_at_most(256) }

end
