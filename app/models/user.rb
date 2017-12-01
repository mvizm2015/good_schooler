class User < ApplicationRecord
  validates :email, presence: true
  belongs_to :code_school

  has_one :profile
  has_many :projects

  def self.active
    where(active: true)
  end

  def self.cohort(cohort_num)
    where(cohort: cohort_num)
  end

  def self.active_cohort(cohort_num)
    active.cohort(cohort_num)
  end
end
