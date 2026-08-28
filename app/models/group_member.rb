class GroupMember < ApplicationRecord

  belongs_to :user
  belongs_to :group
  
  has_many :expenses, through: :group
  has_many :settlements, through: :group
  
end
