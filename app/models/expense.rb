class Expense < ApplicationRecord

  belongs_to :created_by, class_name: 'User'
  belongs_to :currency
  belongs_to :group
  belongs_to :payer , class_name: 'User'

  has_many :expense_splits, dependent: :destroy
  
end
