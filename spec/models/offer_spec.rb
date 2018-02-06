require 'rails_helper'

RSpec.describe Offer, type: :model do
  subject { create(:offer) }

  it { is_expected.to validate_presence_of(:advertiser_name) }
  it { should validate_uniqueness_of(:advertiser_name).case_insensitive }
  it { is_expected.to validate_presence_of(:url) }
  it { should allow_value('http://foo.com').for(:url) }
  it { should_not allow_value('cannot-allow').for(:url) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_length_of(:description).is_at_most(500) }
  it { is_expected.to validate_presence_of(:starts_at) }
end
