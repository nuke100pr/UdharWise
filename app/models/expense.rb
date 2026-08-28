class Expense < ApplicationRecord

  belongs_to :created_by, class_name: 'User'
  belongs_to :currency
  belongs_to :group
  belongs_to :payer , class_name: 'User'

  has_many :expense_splits, dependent: :destroy

  validates :amount , numericality: { greater_than: 0 }
  validates :created_by, presence: true
  validates :payer, presence: true
  validates :group, presence: true
  validates :currency, presence: true
  validates :status, presence: true, inclusion: { in: ['active', 'inactive'] }
  validates :name, presence: true

end
