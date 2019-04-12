class User < ApplicationRecord
  validates :first_name, :last_name, length: { in: 2..60 }
  # validates :last_name, length: { in: 2...60 }
  validates :username, length: {in: 2...20}, uniqueness: true
  # validates :email, email: true, uniqueness:true
  validates :email, confirmation: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } , presence: true
  validates :password, length:{minimum: 8}, format:{with: /[0-9]/, message: "necesitas un numero" }, confirmation: true
  validates :password_hint, length: { maximum: 100 }
  def full_name
    "#{first_name} #{last_name}"



    # t.string "first_name"
    # t.string "last_name"
    # t.string "username"
    # t.string "email"
    # t.string "email_confirmation"
    # t.string "password"
    # t.string "password_confirmation"
    # t.string "password_hint"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false

  end
end
