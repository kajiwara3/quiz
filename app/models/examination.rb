class Examination < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :answer_seets
  validates :name, :entry_capasity, :passing_grade, :start_at, :end_at, presence: true
  scope :in_service,
    ->{ now = Time.current
        where('start_at <= ? and end_at > ?', now, now)}
end
