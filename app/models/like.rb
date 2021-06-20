class Like < ApplicationRecord
  belongs_to :touring
  belongs_to :user

  validates_uniqueness_of :touring_id, scope: :user_id
end
