class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: CATEGORY }

  validates :name, presence: true

  validates :address, presence: true

  has_many :reviews, dependent: :destroy

  validates :phone_number, presence: true
end
