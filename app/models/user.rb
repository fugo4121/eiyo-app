class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # ユーザー情報変更時のバリデーション
  # 新規登録は、devise側でバリデーションをしている

  VALID_PASSWORD_REGEX1 = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  VALID_PASSWORD_REGEX2 = /\A[ぁ-んァ-ン一-龥]+\z/.freeze
  VALID_PASSWORD_REGEX3 = /\A[ァ-ン]+\z/.freeze

  # 空カラム設定は、他の条件を入れていれば、その判定で弾く
  validates :last_name, format: { with: VALID_PASSWORD_REGEX2, message: 'は全角（漢字・ひらがな・カタカナ）を入力してください' }
  validates :first_name, format: { with: VALID_PASSWORD_REGEX2, message: 'は全角（漢字・ひらがな・カタカナ）を入力してください' }
  validates :last_name_kana, format: { with: VALID_PASSWORD_REGEX3, message: 'は全角（カタカナ）を入力してください' }
  validates :first_name_kana, format: { with: VALID_PASSWORD_REGEX3, message: 'は全角（カタカナ）を入力してください' }

  validates :height, numericality: { greater_than_or_equal_to: 50, less_than_or_equal_to: 300 }

  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :gender_id
  end

  validates :birthday, presence: true
end
