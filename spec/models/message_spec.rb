require 'rails_helper'

RSpec.describe Message, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:content) }
  it { should validate_length_of(:content).is_at_most(256) }
end
