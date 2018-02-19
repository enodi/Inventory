require 'rails_helper'

RSpec.describe Item, type: :model do
  context 'Validations' do
    it { should belong_to(:user) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:quantity) }
  end
end
