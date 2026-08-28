class Currency < ApplicationRecord

  has_many :expenses
  has_many :settlements
  
  validates :name, presence: true, uniqueness: true
  validates :code, presence: true, uniqueness: true
  
end
