class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "Is not a valid email")
    end
  end
end

class Zombie < ApplicationRecord
  has_many :brains

  validates :name, presence: true
  validates :bio, length: { maximum: 100 }
  validates :age, numericality: { only_integer: true }
  validates :email, uniqueness: true, email: true
end
