class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store, presence: true
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40 }
  validates :hourly_rate, numericality: { only_integer: true, less_than_or_equal_to: 200 }
  before_save :generate_password

  private

  def generate_password
    charset = Array('A'..'Z') + Array('a'..'z') + Array(0..9)
    self.password = Array.new(8) { charset.sample }.join
  end
end
