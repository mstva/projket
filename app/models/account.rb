class Account < ApplicationRecord
  belongs_to :team
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
