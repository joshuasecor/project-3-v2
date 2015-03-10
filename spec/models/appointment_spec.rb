require 'rails_helper'

RSpec.describe Appointment, type: :model do
  it { should belong_to(:service) }
  it { should belong_to(:weekday) }
  it { should belong_to(:trainer) }
end
