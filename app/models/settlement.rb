class Settlement < ApplicationRecord

  belongs_to :group
  belongs_to :payer, class_name: 'User'
  belongs_to :payee, class_name: 'User'
  belongs_to :currency
  
  validates :group, presence: true
  validates :payer, presence: true
  validates :payee, presence: true  
  validates :currency, presence: true
  validates :status, presence: true, inclusion: { in: ['active', 'inactive'] }
  
end
