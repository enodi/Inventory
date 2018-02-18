require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validations' do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
  end

  context 'Uniqueness' do
    it { should validate_uniqueness_of(:username) }
    it { should validate_uniqueness_of(:email) }
  end
end
