# ==============================================================================
# spec - factory - user
# ==============================================================================

FactoryBot.define do
  factory :user do
    name { 'hoge' }
    firebase_uid { 'hoge' }
  end
end
