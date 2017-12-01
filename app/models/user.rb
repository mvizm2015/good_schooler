class User < ApplicationRecord
  validates :email, presence: true
  belongs_to :code_school

  has_one :profile
  has_many :projects
end
