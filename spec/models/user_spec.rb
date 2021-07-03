# ==============================================================================
# spec - model - user
# ==============================================================================
require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { FactoryBot.create(:user) }

  context 'user is exist' do
    subject { User.find(user.id).id }
    it { is_expected.to eq(user.id) }
  end

  context 'validates :name, null: false' do
    subject { User.new(name: nil, firebase_uid: 'fuga') }
    it 'should return false' do
      is_expected.to be_valid
    end
  end

  context 'validates :firebase_uid, null: false' do
    subject { User.new(name: nil, firebase_uid: 'fuga') }
    it 'should return false'

  end
end
