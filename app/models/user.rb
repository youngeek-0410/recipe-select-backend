# ==============================================================================
# app - model - user
# ==============================================================================
class User < ApplicationRecord
  validates :name, presence: true
  validates :firebase_uid, presence: true, uniqueness: true
end
