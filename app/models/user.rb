class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :username, presence: true, length: { in: 2..20}
  validates :email, presence: true, length: { in: 8..30 }, uniqueness: true, format: { with: /[\w]+@([\w-]+\.)+[\w-]{2,4}/,
  message: "not valid" }
  validates :password, presence: true
  validates_confirmation_of :password,  message: 'should match password', if: :password
end
