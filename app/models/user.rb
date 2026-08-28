class User < ApplicationRecord

  has_many :group_members
  has_many :groups, through: :group_members
  has_many :created_groups, class_name: 'Group', foreign_key: 'created_by_id'

  has_many :created_expenses , class_name: 'Expense', foreign_key: 'created_by_id'
  has_many :expenses_as_payer , class_name: 'Expense', foreign_key: 'payer_id'
  
  has_many :settlements_as_payer , class_name: 'Settlement', foreign_key: 'payer_id'
  has_many :settlements_as_payee , class_name: 'Settlement', foreign_key: 'payee_id'
  
end
