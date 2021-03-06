class Customer < ApplicationRecord
  validates :name, presence: true
  validates :registered_at, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :postal_code, presence: true
  validates :phone, presence: true, uniqueness: true
  has_many :rentals

  def movies_checked_out_count
    rentals.select { |rental| rental.is_current }.count
  end
end
