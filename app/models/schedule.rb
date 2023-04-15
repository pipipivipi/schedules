class Schedule < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :startdate, presence: true
  validates :enddate, presence: true
  validates :memo, length: { maximum: 500 }
  validates :start_end_check, presence: true

  def start_end_check
    errors.add(:enddate, "は開始日より前の日付では登録できません") unless
    self.startdate < self.enddate     
  end
end
