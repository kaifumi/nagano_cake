class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


# rubyの規約上、正規表現の前後は/\A～\z/で閉じる。
	validates :first_name,
	presence: true,
	format: {
		with: /\A^[ぁ-んァ-ン一-龥]\z/,
		message: "	アルファベットは使用できません"
		}

	validates :last_name,
	presence: true,
	format: {
		with: /\A^[ぁ-んァ-ン一-龥]\z/,
		message: "アルファベットは使用できません"
		}

	validates :kana_first_name,
	presence: true,
	format: {
		with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
		message: "全角カタカナのみで入力して下さい"
		}

	validates :kana_last_name,
	presence: true,
	format: {
		with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
		message: "全角カタカナのみで入力して下さい"
		}

	validates :telephone_number,
	presence: true,
	format: {
		with: /\A[0-9]{3}-[0-9]{4}-[0-9]{4}\z/,
		message: "〇〇〇-〇〇〇〇-〇〇〇〇のように入力して下さい"
		}

	validates :postal_code,
	presence: true,
	format: {
		with: /\A[0-9]{3}-[0-9]{4}\z/,
		message: "〇〇〇-〇〇〇〇のように入力して下さい"
	}

	validates :address, presence: true

	validates :status,
	inclusion: { in: [true, false] }


	acts_as_paranoid
	# 論理削除

	has_many :cart_products, dependent: :destroy
	has_many :orders, dependent: :destroy
	has_many :deliveries, dependent: :destroy

end
