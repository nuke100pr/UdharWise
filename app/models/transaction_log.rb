class TransactionLog < ApplicationRecord
  belongs_to :user
  belongs_to :group
  belongs_to :currency

  validates :user, presence: true
  validates :group, presence: true
  validates :currency, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :transaction_type, presence: true, inclusion: { in: ['delete', 'update', 'create'] }
  validates :occurred_at, presence: true
end
