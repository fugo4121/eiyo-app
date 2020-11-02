class User < ApplicationRecord

  has_one_attached :image
  has_many :healths
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # ユーザー情報新規・変更時のバリデーション
  # 新規のdeviseカラムは、デフォルトでバリデーションをしている
  # 空カラム設定は、他の条件を入れていれば、その判定で弾く

  # 名前は空白でないこと
  validates :name, presence: true
  # 身長は50〜300cmの間であること
  validates :height, numericality: { greater_than_or_equal_to: 50, less_than_or_equal_to: 300 }
  #性別は---が選択状態でないこと
  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :gender_id
  end
  #生年月日は空白でないこと
  validates :birthday, presence: true
end
