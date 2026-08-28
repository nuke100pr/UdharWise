class Currency < ApplicationRecord

  has_many :expenses
  has_many :settlements
  
  
end
