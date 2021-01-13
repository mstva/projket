class Team < ApplicationRecord
  has_many :accounts
  has_many :projects

  accepts_nested_attributes_for :accounts, allow_destroy: true
end
