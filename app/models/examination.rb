class Examination < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  validates :name, :entry_capasity, :passing_grade, :start_at, :end_at, presence: true
end
