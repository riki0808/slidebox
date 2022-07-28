class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :reset_password_token, uniqueness: true, allow_nil: true
  # validates :email, uniqueness: true, presence: true
  # validates :password, presence: true, on: :create
  # VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]{8,32}\z/i.freeze
  # validates :password, format: { with: VALID_PASSWORD_REGEX, massege: 'は半角英数を両方含む必要があります' }, on: :create
  # validates :password, length: { minimum: 8 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  has_one :setting
  has_many :docs
end
