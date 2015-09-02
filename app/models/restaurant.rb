class Restaurant < ActiveRecord::Base

  has_many :reservations
  has_and_belongs_to_many :cuisine_types

  validates :name, presence: true
  validate :capacity_must_be_even

  # Just an example of a custom validation
  def capacity_must_be_even
    if capacity.odd?
      errors.add(:capacity, "can't be odd")
    end
  end

end
