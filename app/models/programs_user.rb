class Programs_user < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :programs
end