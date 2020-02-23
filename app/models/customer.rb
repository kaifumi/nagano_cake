class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	validates :first_name,
	presence: true,
	format: {
		with: /\A[a-z]+\z/,
		message: "半角のみで入力して下さい"
		}

	validates :last_name,
	presence: true,
	format: {
		with: /\A[a-z]+\z/,
		message: "半角のみで入力して下さい"
		}

	validates :kana_first_name,
	presence: true,
	format: {
		with: /[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+/,
		message: "全角カタカナのみで入力して下さい"
		}

	validates :kana_last_name,
	presence: true,
	format: {
		with: /[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+/,
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
	numericality: { only_interger: true },
	format: {
		with: /\A[0-9]{3}-[0-9]{4}\z/,
		message: "〇〇〇-〇〇〇〇のように入力して下さい"
	}

	validates :address, presence: true

	validates :status,
	inclusion: { in: [true, false] }

	validates :created_at, presence: true
	validates :updated_at, presence: true

	acts_as_paranoid
	# 論理削除

	has_many :cart_product, dependent: :destroy
	has_many :order, dependent: :destroy
	has_many :delivery, dependent: :destroy

end
