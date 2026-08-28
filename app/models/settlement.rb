class Settlement < ApplicationRecord

  belongs_to :group
  belongs_to :payer, class_name: 'User'
  belongs_to :payee, class_name: 'User'
  belongs_to :currency
  
end
