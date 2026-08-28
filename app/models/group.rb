class Group < ApplicationRecord

  belongs_to :created_by, class_name: 'User'
  
  has_many :group_members , dependent: :destroy
  has_many :users, through: :group_members
  has_many :expenses, dependent: :destroy
  has_many :settlements, dependent: :destroy



end
