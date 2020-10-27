class User < ApplicationRecord

  has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # ユーザー情報変更時のバリデーション
  # 新規登録は、devise側でバリデーションをしている
  # 空カラム設定は、他の条件を入れていれば、その判定で弾く

  validates :name, presence: true
  validates :height, numericality: { greater_than_or_equal_to: 50, less_than_or_equal_to: 300 }

  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :gender_id
  end

  validates :birthday, presence: true
end
