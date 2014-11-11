class Gado < ActiveRecord::Base
  validates :raca, presence: true, length: { maximum: 40 }
  validates :peso, numericality: { greater_than: 0, less_than: 200 }
end
