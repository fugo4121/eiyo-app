class Health < ApplicationRecord
  belongs_to :user

  validate :date_after_start

  #睡眠時間は---が選択状態でないこと
  with_options numericality: { other_than: 0, message: 'を選択してください' } do
    validates :sleep_time_id
  end

  with_options presence: true do
    # 記録日空白不可、重複不可、他ユーザーとの重複はOK
    validates :start_time, uniqueness: { scope: :user_id }
  end

  validates :weight, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 300 }

  # 未来の日付の記録不可
  def date_after_start
    errors.add(:start_time, "は未来の日付を選択できません") if start_time > Date.today
  end

end
