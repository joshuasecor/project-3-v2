require 'rails_helper'

RSpec.describe Weekday, type: :model do
  it { should have_many(:appointments) }
end
