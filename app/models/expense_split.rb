class ExpenseSplit < ApplicationRecord
  
  belongs_to :expense
  belongs_to :user

  validates :expense, presence: true , uniqueness: true
  validates :user, presence: true
  validates :amount , numericality: { greater_than_equal_to: 0 }
  
end
