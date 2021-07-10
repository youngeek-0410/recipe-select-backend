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

  context 'validates :name, presence: true' do
    subject { FactoryBot.build(:user, name: nil, firebase_uid: 'fuga') }
    it 'should return invalid name' do
      is_expected.not_to be_valid
    end
  end

  context 'validates :firebase_uid, presence: true' do
    subject { FactoryBot.build(:user, name: 'hoge', firebase_uid: nil) }
    it 'should return invalid firebase_uid' do
      is_expected.not_to be_valid
    end
  end

  context 'validates :firebase_uid, uniqueness: true' do
    subject { FactoryBot.build(:user, name: 'hoge', firebase_uid: user.firebase_uid) }
    it 'should return invalid firebase_uid' do
      is_expected.not_to be_valid
    end
  end
end
