class TouringUser < ApplicationRecord
  belongs_to :touring
  belongs_to :user
end
