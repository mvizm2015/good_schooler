class CodeSchool < ApplicationRecord
  has_many :students, class_name: 'User'

  has_many :projects, through: :students
  #hasmany :versions, through: :projects (building chains, sequences)
  #has_many :reviews, through: :versions
end
