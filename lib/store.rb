class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_mens_or_womens_apparel

  def must_carry_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      mens_apparel || errors.add(:mens_apparel, ": store must stock one of mens_apparel or womens_apparel")
      womens_apparel || errors.add(:womens_apparel, ": store must stock one of mens_apparel or womens_apparel")
    end
  end
end
