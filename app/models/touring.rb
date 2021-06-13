class Touring < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :displacement
  belongs_to :style
  belongs_to :term
  belongs_to :area

  has_many :touring_users
  has_many :users, through: :touring_users
  

  with_options presence: true do
    validates :plan
    validates :text
    validates :day
  end

  with_options numericality: { other_than: 1 } do
    validates :displacement_id
    validates :style_id
    validates :term_id
    validates :area_id
  end
end
