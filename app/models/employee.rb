class Employee < ActiveRecord::Base
  has_many :devices, dependent: :destroy
  validates :code, presence: true, length: { minimum: 4, maximum: 4}
  validates :email, presence: true, length: { minimum: 5}
  validates :name, presence: true, length: { minimum: 5}
  validates :phone, presence: true, length: { minimum: 7}
end
