class Project < ApplicationRecord
  belongs_to :account
  belongs_to :team

  accepts_nested_attributes_for :team
end
